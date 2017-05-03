<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form_Cap_pass
    'Inherits System.Windows.Forms.Form
    Inherits DevComponents.DotNetBar.Office2007RibbonForm
    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form_Cap_pass))
        Me.Panel_Cappass = New DevComponents.DotNetBar.PanelEx()
        Me.PictureBox1 = New System.Windows.Forms.PictureBox()
        Me.ReflectionLabel_ChaoMung = New DevComponents.DotNetBar.Controls.ReflectionLabel()
        Me.cmdExit = New DevComponents.DotNetBar.ButtonX()
        Me.btn_DongY = New DevComponents.DotNetBar.ButtonX()
        Me.txt_IdNguoiDung = New DevComponents.DotNetBar.Controls.TextBoxX()
        Me.txt_NewPassword = New DevComponents.DotNetBar.Controls.TextBoxX()
        Me.Label_Password = New DevComponents.DotNetBar.LabelX()
        Me.Label_UserName = New DevComponents.DotNetBar.LabelX()
        Me.Timer_Doi_Anh = New System.Windows.Forms.Timer(Me.components)
        Me.Panel_Cappass.SuspendLayout()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Panel_Cappass
        '
        Me.Panel_Cappass.CanvasColor = System.Drawing.SystemColors.Control
        Me.Panel_Cappass.ColorSchemeStyle = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled
        Me.Panel_Cappass.Controls.Add(Me.PictureBox1)
        Me.Panel_Cappass.Controls.Add(Me.ReflectionLabel_ChaoMung)
        Me.Panel_Cappass.Controls.Add(Me.cmdExit)
        Me.Panel_Cappass.Controls.Add(Me.btn_DongY)
        Me.Panel_Cappass.Controls.Add(Me.txt_IdNguoiDung)
        Me.Panel_Cappass.Controls.Add(Me.txt_NewPassword)
        Me.Panel_Cappass.Controls.Add(Me.Label_Password)
        Me.Panel_Cappass.Controls.Add(Me.Label_UserName)
        resources.ApplyResources(Me.Panel_Cappass, "Panel_Cappass")
        Me.Panel_Cappass.Name = "Panel_Cappass"
        Me.Panel_Cappass.Style.Alignment = System.Drawing.StringAlignment.Center
        Me.Panel_Cappass.Style.BackColor1.Color = System.Drawing.Color.FromArgb(CType(CType(227, Byte), Integer), CType(CType(239, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.Panel_Cappass.Style.BackColor2.Color = System.Drawing.Color.MediumSpringGreen
        Me.Panel_Cappass.Style.Border = DevComponents.DotNetBar.eBorderType.SingleLine
        Me.Panel_Cappass.Style.BorderColor.Color = System.Drawing.Color.FromArgb(CType(CType(128, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.Panel_Cappass.Style.ForeColor.Color = System.Drawing.Color.Chartreuse
        Me.Panel_Cappass.Style.GradientAngle = 90
        Me.Panel_Cappass.StyleMouseDown.BackColor1.Color = System.Drawing.Color.GreenYellow
        Me.Panel_Cappass.StyleMouseDown.BackColor2.Color = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(192, Byte), Integer))
        Me.Panel_Cappass.StyleMouseDown.BorderColor.Color = System.Drawing.Color.FromArgb(CType(CType(44, Byte), Integer), CType(CType(98, Byte), Integer), CType(CType(139, Byte), Integer))
        Me.Panel_Cappass.StyleMouseDown.ForeColor.Color = System.Drawing.Color.FromArgb(CType(CType(0, Byte), Integer), CType(CType(0, Byte), Integer), CType(CType(0, Byte), Integer))
        Me.Panel_Cappass.StyleMouseOver.BackColor1.Color = System.Drawing.Color.PaleGreen
        Me.Panel_Cappass.StyleMouseOver.BackColor2.Color = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(192, Byte), Integer))
        Me.Panel_Cappass.StyleMouseOver.BorderColor.Color = System.Drawing.Color.FromArgb(CType(CType(150, Byte), Integer), CType(CType(219, Byte), Integer), CType(CType(250, Byte), Integer))
        Me.Panel_Cappass.StyleMouseOver.ForeColor.Color = System.Drawing.Color.FromArgb(CType(CType(0, Byte), Integer), CType(CType(0, Byte), Integer), CType(CType(0, Byte), Integer))
        '
        'PictureBox1
        '
        Me.PictureBox1.Image = Global.PhanMemBanVeXe_Full.My.Resources.Resources.ferme
        resources.ApplyResources(Me.PictureBox1, "PictureBox1")
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.TabStop = False
        '
        'ReflectionLabel_ChaoMung
        '
        Me.ReflectionLabel_ChaoMung.BackColor = System.Drawing.Color.ForestGreen
        '
        '
        '
        Me.ReflectionLabel_ChaoMung.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square
        resources.ApplyResources(Me.ReflectionLabel_ChaoMung, "ReflectionLabel_ChaoMung")
        Me.ReflectionLabel_ChaoMung.ForeColor = System.Drawing.Color.White
        Me.ReflectionLabel_ChaoMung.Name = "ReflectionLabel_ChaoMung"
        '
        'cmdExit
        '
        Me.cmdExit.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton
        resources.ApplyResources(Me.cmdExit, "cmdExit")
        Me.cmdExit.ColorTable = DevComponents.DotNetBar.eButtonColor.Office2007WithBackground
        Me.cmdExit.Name = "cmdExit"
        Me.cmdExit.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled
        '
        'btn_DongY
        '
        Me.btn_DongY.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton
        resources.ApplyResources(Me.btn_DongY, "btn_DongY")
        Me.btn_DongY.ColorTable = DevComponents.DotNetBar.eButtonColor.Office2007WithBackground
        Me.btn_DongY.Name = "btn_DongY"
        '
        'txt_IdNguoiDung
        '
        '
        '
        '
        Me.txt_IdNguoiDung.Border.BackColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.DockSiteBackColor2
        Me.txt_IdNguoiDung.Border.BorderLeftColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.DockSiteBackColor
        Me.txt_IdNguoiDung.Border.BorderRightColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.BarBackground2
        Me.txt_IdNguoiDung.Border.BorderTopColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.ItemCheckedBackground2
        Me.txt_IdNguoiDung.Border.Class = "TextBoxBorder"
        Me.txt_IdNguoiDung.Border.CornerType = DevComponents.DotNetBar.eCornerType.Square
        Me.txt_IdNguoiDung.FocusHighlightEnabled = True
        resources.ApplyResources(Me.txt_IdNguoiDung, "txt_IdNguoiDung")
        Me.txt_IdNguoiDung.Name = "txt_IdNguoiDung"
        '
        'txt_NewPassword
        '
        '
        '
        '
        Me.txt_NewPassword.Border.BackColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.DockSiteBackColor2
        Me.txt_NewPassword.Border.BorderLeftColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.DockSiteBackColor
        Me.txt_NewPassword.Border.BorderRightColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.BarBackground2
        Me.txt_NewPassword.Border.BorderTopColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.ItemCheckedBackground2
        Me.txt_NewPassword.Border.Class = "TextBoxBorder"
        Me.txt_NewPassword.Border.CornerType = DevComponents.DotNetBar.eCornerType.Square
        Me.txt_NewPassword.FocusHighlightEnabled = True
        resources.ApplyResources(Me.txt_NewPassword, "txt_NewPassword")
        Me.txt_NewPassword.Name = "txt_NewPassword"
        Me.txt_NewPassword.UseSystemPasswordChar = True
        '
        'Label_Password
        '
        '
        '
        '
        Me.Label_Password.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square
        resources.ApplyResources(Me.Label_Password, "Label_Password")
        Me.Label_Password.Name = "Label_Password"
        '
        'Label_UserName
        '
        '
        '
        '
        Me.Label_UserName.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square
        resources.ApplyResources(Me.Label_UserName, "Label_UserName")
        Me.Label_UserName.Name = "Label_UserName"
        '
        'Timer_Doi_Anh
        '
        Me.Timer_Doi_Anh.Enabled = True
        Me.Timer_Doi_Anh.Interval = 1000
        '
        'Form_Cap_pass
        '
        Me.AcceptButton = Me.btn_DongY
        resources.ApplyResources(Me, "$this")
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.Controls.Add(Me.Panel_Cappass)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow
        Me.Name = "Form_Cap_pass"
        Me.Panel_Cappass.ResumeLayout(False)
        Me.Panel_Cappass.PerformLayout()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents Panel_Cappass As DevComponents.DotNetBar.PanelEx
    Friend WithEvents ReflectionLabel_ChaoMung As DevComponents.DotNetBar.Controls.ReflectionLabel
    Friend WithEvents cmdExit As DevComponents.DotNetBar.ButtonX
    Friend WithEvents btn_DongY As DevComponents.DotNetBar.ButtonX
    Friend WithEvents txt_IdNguoiDung As DevComponents.DotNetBar.Controls.TextBoxX
    Friend WithEvents txt_NewPassword As DevComponents.DotNetBar.Controls.TextBoxX
    Friend WithEvents Label_Password As DevComponents.DotNetBar.LabelX
    Friend WithEvents Label_UserName As DevComponents.DotNetBar.LabelX
    Friend WithEvents PictureBox1 As System.Windows.Forms.PictureBox
    Friend WithEvents Timer_Doi_Anh As System.Windows.Forms.Timer
End Class
