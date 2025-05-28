// Profile: PluginOperationReport
// Parent: zib-Procedure-event
// Id: plugin-operationreport
// Title: "Procedure report - Operation"
// Description: """Procedure report as used within PLUGIN for Operation.

// <!--
// This profile is based on the PluginOperationReport profile.
// -->

// """
// * ^status = #draft
// * basedOn ..1
// //  waar staat category?
// * category 1..
// * subject 1..1
// * performer 1..1
// // * report.TextResult 1..1
// // * report.TextResult ^slicing.discriminator.type = #value
// // * report.TextResult ^slicing.discriminator.path = "system"
// // * report.TextResult ^slicing.rules = #open
// // * report.textResult.effective[x].effectiveDateTime 1..1
// // is dit correct voor de brieftext? anders misschien via media
// // * report.conclusion 1..

