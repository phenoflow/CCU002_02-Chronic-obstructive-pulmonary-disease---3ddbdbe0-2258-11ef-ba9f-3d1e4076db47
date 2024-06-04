cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  ccu002_02-chronic-obstructive-pulmonary-disease-copd---secondary:
    run: ccu002_02-chronic-obstructive-pulmonary-disease-copd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  ccu002_02-chronic-obstructive-pulmonary-disease-copd-emphysema---secondary:
    run: ccu002_02-chronic-obstructive-pulmonary-disease-copd-emphysema---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: ccu002_02-chronic-obstructive-pulmonary-disease-copd---secondary/output
  ccu002_02-chronic-obstructive-pulmonary-disease-copd-bronchiolitis---secondary:
    run: ccu002_02-chronic-obstructive-pulmonary-disease-copd-bronchiolitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: ccu002_02-chronic-obstructive-pulmonary-disease-copd-emphysema---secondary/output
  acute-ccu002_02-chronic-obstructive-pulmonary-disease-copd---secondary:
    run: acute-ccu002_02-chronic-obstructive-pulmonary-disease-copd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: ccu002_02-chronic-obstructive-pulmonary-disease-copd-bronchiolitis---secondary/output
  mucopurulent-ccu002_02-chronic-obstructive-pulmonary-disease-copd---secondary:
    run: mucopurulent-ccu002_02-chronic-obstructive-pulmonary-disease-copd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: acute-ccu002_02-chronic-obstructive-pulmonary-disease-copd---secondary/output
  severe-ccu002_02-chronic-obstructive-pulmonary-disease-copd---secondary:
    run: severe-ccu002_02-chronic-obstructive-pulmonary-disease-copd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: mucopurulent-ccu002_02-chronic-obstructive-pulmonary-disease-copd---secondary/output
  bullous-ccu002_02-chronic-obstructive-pulmonary-disease-copd---secondary:
    run: bullous-ccu002_02-chronic-obstructive-pulmonary-disease-copd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: severe-ccu002_02-chronic-obstructive-pulmonary-disease-copd---secondary/output
  ccu002_02-chronic-obstructive-pulmonary-disease-copd-obliteran---secondary:
    run: ccu002_02-chronic-obstructive-pulmonary-disease-copd-obliteran---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: bullous-ccu002_02-chronic-obstructive-pulmonary-disease-copd---secondary/output
  toxic-ccu002_02-chronic-obstructive-pulmonary-disease-copd---secondary:
    run: toxic-ccu002_02-chronic-obstructive-pulmonary-disease-copd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: ccu002_02-chronic-obstructive-pulmonary-disease-copd-obliteran---secondary/output
  chemical-ccu002_02-chronic-obstructive-pulmonary-disease-copd---secondary:
    run: chemical-ccu002_02-chronic-obstructive-pulmonary-disease-copd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: toxic-ccu002_02-chronic-obstructive-pulmonary-disease-copd---secondary/output
  ccu002_02-chronic-obstructive-pulmonary-disease-copd-bronchitis---secondary:
    run: ccu002_02-chronic-obstructive-pulmonary-disease-copd-bronchitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: chemical-ccu002_02-chronic-obstructive-pulmonary-disease-copd---secondary/output
  obliterative-ccu002_02-chronic-obstructive-pulmonary-disease-copd---secondary:
    run: obliterative-ccu002_02-chronic-obstructive-pulmonary-disease-copd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: ccu002_02-chronic-obstructive-pulmonary-disease-copd-bronchitis---secondary/output
  simple-ccu002_02-chronic-obstructive-pulmonary-disease-copd---secondary:
    run: simple-ccu002_02-chronic-obstructive-pulmonary-disease-copd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: obliterative-ccu002_02-chronic-obstructive-pulmonary-disease-copd---secondary/output
  atrophic-ccu002_02-chronic-obstructive-pulmonary-disease-copd---secondary:
    run: atrophic-ccu002_02-chronic-obstructive-pulmonary-disease-copd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: simple-ccu002_02-chronic-obstructive-pulmonary-disease-copd---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: atrophic-ccu002_02-chronic-obstructive-pulmonary-disease-copd---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
