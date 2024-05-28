cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  neuropathic-pain-singlelevel---primary:
    run: neuropathic-pain-singlelevel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  neuropathy-neuropathic-pain---primary:
    run: neuropathy-neuropathic-pain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: neuropathic-pain-singlelevel---primary/output
  neuropathic-pain-prolapse---primary:
    run: neuropathic-pain-prolapse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: neuropathy-neuropathic-pain---primary/output
  arthropathy-neuropathic-pain---primary:
    run: arthropathy-neuropathic-pain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: neuropathic-pain-prolapse---primary/output
  xpolyneuropathy-neuropathic-pain---primary:
    run: xpolyneuropathy-neuropathic-pain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: arthropathy-neuropathic-pain---primary/output
  neuropathic-pain---primary:
    run: neuropathic-pain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: xpolyneuropathy-neuropathic-pain---primary/output
  neuropathic-pain-joint---primary:
    run: neuropathic-pain-joint---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: neuropathic-pain---primary/output
  neuropathic-pain-inflammatory---primary:
    run: neuropathic-pain-inflammatory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: neuropathic-pain-joint---primary/output
  neuropathic-pain-neuralgia---primary:
    run: neuropathic-pain-neuralgia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: neuropathic-pain-inflammatory---primary/output
  mononeuropathy-neuropathic-pain---primary:
    run: mononeuropathy-neuropathic-pain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: neuropathic-pain-neuralgia---primary/output
  complex-neuropathic-pain---primary:
    run: complex-neuropathic-pain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: mononeuropathy-neuropathic-pain---primary/output
  vascular-neuropathic-pain---primary:
    run: vascular-neuropathic-pain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: complex-neuropathic-pain---primary/output
  neuropathic-pain-lumbar---primary:
    run: neuropathic-pain-lumbar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: vascular-neuropathic-pain---primary/output
  internal-neuropathic-pain---primary:
    run: internal-neuropathic-pain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: neuropathic-pain-lumbar---primary/output
  postherpetic-neuropathic-pain---primary:
    run: postherpetic-neuropathic-pain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: internal-neuropathic-pain---primary/output
  cervical-neuropathic-pain---primary:
    run: cervical-neuropathic-pain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: postherpetic-neuropathic-pain---primary/output
  neuropathic-pain-unspecified---primary:
    run: neuropathic-pain-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: cervical-neuropathic-pain---primary/output
  neuropathic-pain-reflex---primary:
    run: neuropathic-pain-reflex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: neuropathic-pain-unspecified---primary/output
  trigeminal-neuropathic-pain---primary:
    run: trigeminal-neuropathic-pain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: neuropathic-pain-reflex---primary/output
  neuropathic-pain-xother---primary:
    run: neuropathic-pain-xother---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: trigeminal-neuropathic-pain---primary/output
  acute-neuropathic-pain---primary:
    run: acute-neuropathic-pain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: neuropathic-pain-xother---primary/output
  neuropathic-pain-radiculitis---primary:
    run: neuropathic-pain-radiculitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: acute-neuropathic-pain---primary/output
  diabetic-neuropathic-pain---primary:
    run: diabetic-neuropathic-pain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: neuropathic-pain-radiculitis---primary/output
  familial-neuropathic-pain---primary:
    run: familial-neuropathic-pain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: diabetic-neuropathic-pain---primary/output
  neuropathic-pain-noninsulin---primary:
    run: neuropathic-pain-noninsulin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: familial-neuropathic-pain---primary/output
  neuropathic-pain-dystrophy---primary:
    run: neuropathic-pain-dystrophy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: neuropathic-pain-noninsulin---primary/output
  neuropathic-pain-multiplelevel---primary:
    run: neuropathic-pain-multiplelevel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: neuropathic-pain-dystrophy---primary/output
  neuropathic-pain-mumps---primary:
    run: neuropathic-pain-mumps---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: neuropathic-pain-multiplelevel---primary/output
  metabolic-neuropathic-pain---primary:
    run: metabolic-neuropathic-pain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: neuropathic-pain-mumps---primary/output
  neuropathic-pain-ulcer---primary:
    run: neuropathic-pain-ulcer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: metabolic-neuropathic-pain---primary/output
  thoracic-neuropathic-pain---primary:
    run: thoracic-neuropathic-pain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: neuropathic-pain-ulcer---primary/output
  neuropathic-pain-sciatica---primary:
    run: neuropathic-pain-sciatica---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: thoracic-neuropathic-pain---primary/output
  amyloid-neuropathic-pain---primary:
    run: amyloid-neuropathic-pain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: neuropathic-pain-sciatica---primary/output
  chronic-neuropathic-pain---primary:
    run: chronic-neuropathic-pain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: amyloid-neuropathic-pain---primary/output
  neuropathic-pain-twolevel---primary:
    run: neuropathic-pain-twolevel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: chronic-neuropathic-pain---primary/output
  sympathetic-neuropathic-pain---primary:
    run: sympathetic-neuropathic-pain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: neuropathic-pain-twolevel---primary/output
  lumbosacral-neuropathic-pain---primary:
    run: lumbosacral-neuropathic-pain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: sympathetic-neuropathic-pain---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: lumbosacral-neuropathic-pain---primary/output
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
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
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
