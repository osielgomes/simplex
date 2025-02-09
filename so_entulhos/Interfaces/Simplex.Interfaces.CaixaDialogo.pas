unit Simplex.Interfaces.CaixaDialogo;

interface

type
  TModalResult = (tpYes, tpNo, tpOk, tpCancel);

  iButtons = interface;

  iMessageDialog = interface
    ['{5149D290-4DA1-496F-B72B-317B2E15483B}']
    function Dialog:                         iMessageDialog;
    function Warning:                        iMessageDialog;
    function Question:                       iMessageDialog;
    function Error:                          iMessageDialog;
    function MessageDialog(aValue : string): iMessageDialog;
    function Show:                           iMessageDialog;
    function Buttons:                        iButtons;
//    function ModalResult:                    TModalResult;
  end;

  iButtons = interface
    ['{92000B58-CA52-4AFB-A2F7-300B147FFB82}']
    function YesNo:       iMessageDialog;
    function OkCancel:    iMessageDialog;
    function Ok:          iMessageDialog;
  end;
//    dialog.warning.buttons.yesno.message('')


implementation

end.
