import fs from "fs";

const SHEET_URL = "https://docs.google.com/spreadsheets/d/e/2PACX-1vS8Ae9TtmUWrWC3yx0dg_B7uhFcEX2MvahcpjWUGxh6092I3ZgnK92WYiqbGTN-Q7kVrIQzy1DS3HBh/pub?output=tsv";

// Where to save the Typst file
const OUT_FILE = "openings"

function isDateInFuture(dateStr) {
  if (!dateStr) return true; // keep if no deadline
  const dateToCheck = new Date(dateStr);
  if (isNaN(dateToCheck)) return false;
  const today = new Date();
  dateToCheck.setHours(0, 0, 0, 0);
  today.setHours(0, 0, 0, 0);
  return dateToCheck >= today;
}

const response = await fetch(SHEET_URL);
const tsv = await response.text();

const rows = tsv.split("\n").map(r => r.split("\t")).slice(1); // skip header

// Filter and format data
const openings = rows
  .filter(line => line[0] !== "" && (isDateInFuture(line[1]) || line[1] === ""))
  .map(line => [
    line[0], // Title
    line[1] || "⚠️", // Deadline
    line[2] || "", // Category
    line[3] || ""  // Link
  ]);

// write tsv file
const tsvData = "Name\tDeadline\tType\tUrl\n" + `${openings.map(o => `${o[0]}\t${o[1]}\t${o[2]}\t${o[3]}`).join("\n")}`;
fs.writeFile(`${OUT_FILE}.tsv`, tsvData, 'utf8', function (err) {
  if (err) {
    console.log('Some error occured - file either not saved or corrupted file saved.');
  } else{
	console.log(`✅ Wrote ${openings.length} openings to ${OUT_FILE}.csv`);
  }
});

// Write Typst file
const typstData = `#let openings = (
${openings.map(o => `  ("${o[0]}", "${o[1]}", "${o[2]}", "${o[3]}")`).join(",\n")}
)`;

fs.writeFileSync(OUT_FILE + ".typ", typstData);
console.log(`✅ Wrote ${openings.length} openings to ${OUT_FILE}.typ`);
