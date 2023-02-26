object DM: TDM
  OldCreateOrder = False
  Height = 314
  Width = 581
  object FDConnection1: TFDConnection
    Params.Strings = (
      'SERVER=DESKTOP-I0K1E5A\SQLEXPRESS2016'
      'User_Name=arif faisal'
      'Password=ariffaisal'
      'ApplicationName=Point of Sales (POS)'
      'Workstation=DESKTOP-I0K1E5A'
      'DATABASE=POS'
      'MARS=yes'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 240
    Top = 104
  end
  object FDStoredProcPO: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'POS.dbo.GetNumberSequence'
    Left = 368
    Top = 96
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@Param'
        DataType = ftString
        ParamType = ptInput
        Size = 60
      end>
  end
  object FDStoredProcSO: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'POS.dbo.GetNumberSequence'
    Left = 472
    Top = 160
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@Param'
        DataType = ftString
        ParamType = ptInput
        Size = 60
      end>
  end
  object FDQueryGetRecordId: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from Getrecordid')
    Left = 248
    Top = 200
  end
  object FDQuGlobal: TFDQuery
    Connection = FDConnection1
    Left = 128
    Top = 120
  end
  object FDQuGlobal2: TFDQuery
    Connection = FDConnection1
    Left = 112
    Top = 200
  end
  object FDQuGlobal3: TFDQuery
    Connection = FDConnection1
    Left = 400
    Top = 40
  end
  object FDQuGlobal4: TFDQuery
    Connection = FDConnection1
    Left = 352
    Top = 168
  end
end
