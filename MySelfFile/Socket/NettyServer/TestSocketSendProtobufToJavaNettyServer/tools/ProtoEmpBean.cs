// Generated by the protocol buffer compiler.  DO NOT EDIT!

using pb = global::Google.ProtocolBuffers;
using pbc = global::Google.ProtocolBuffers.Collections;
using pbd = global::Google.ProtocolBuffers.Descriptors;
using scg = global::System.Collections.Generic;
namespace com.itstack.bean {
  
  public static partial class ProtoEmpBean {
  
    #region Extension registration
    public static void RegisterAllExtensions(pb::ExtensionRegistry registry) {
    }
    #endregion
    #region Static variables
    internal static pbd::MessageDescriptor internal__static_com_itstack_bean_EmpBean__Descriptor;
    internal static pb::FieldAccess.FieldAccessorTable<global::com.itstack.bean.EmpBean, global::com.itstack.bean.EmpBean.Builder> internal__static_com_itstack_bean_EmpBean__FieldAccessorTable;
    internal static pbd::MessageDescriptor internal__static_com_itstack_bean_CompanyBean__Descriptor;
    internal static pb::FieldAccess.FieldAccessorTable<global::com.itstack.bean.CompanyBean, global::com.itstack.bean.CompanyBean.Builder> internal__static_com_itstack_bean_CompanyBean__FieldAccessorTable;
    #endregion
    #region Descriptor
    public static pbd::FileDescriptor Descriptor {
      get { return descriptor; }
    }
    private static pbd::FileDescriptor descriptor;
    
    static ProtoEmpBean() {
      byte[] descriptorData = global::System.Convert.FromBase64String(
          "ChdCZWFuL1Byb3RvRW1wQmVhbi5wcm90bxIQY29tLml0c3RhY2suYmVhbiKb" + 
          "AQoHRW1wQmVhbhIPCgdlbXBOYW1lGAEgAigJEg0KBWVtcFFRGAIgAigJEhEK" + 
          "CWVtcEluRGF0ZRgDIAIoCRIxCgplbXBDb21wYW55GAQgAygLMh0uY29tLml0" + 
          "c3RhY2suYmVhbi5Db21wYW55QmVhbhIqCgdlbXBUeXBlGAUgAigOMhkuY29t" + 
          "Lml0c3RhY2suYmVhbi5FbXBFbnVtIkgKC0NvbXBhbnlCZWFuEhQKDEpvYlNl" + 
          "bmlvcml0eRgBIAIoCRITCgtDb21wYW55TmFtZRgCIAIoCRIOCgZTYWxhcnkY" + 
          "AyABKAkqLgoHRW1wRW51bRILCgdIYXJtYXN0EAESCgoGTWFuYWdlEAISCgoG" + 
          "Q29tbW9uEAM=");
      pbd::FileDescriptor.InternalDescriptorAssigner assigner = delegate(pbd::FileDescriptor root) {
        descriptor = root;
        internal__static_com_itstack_bean_EmpBean__Descriptor = Descriptor.MessageTypes[0];
        internal__static_com_itstack_bean_EmpBean__FieldAccessorTable = 
            new pb::FieldAccess.FieldAccessorTable<global::com.itstack.bean.EmpBean, global::com.itstack.bean.EmpBean.Builder>(internal__static_com_itstack_bean_EmpBean__Descriptor,
                new string[] { "EmpName", "EmpQQ", "EmpInDate", "EmpCompany", "EmpType", });
        internal__static_com_itstack_bean_CompanyBean__Descriptor = Descriptor.MessageTypes[1];
        internal__static_com_itstack_bean_CompanyBean__FieldAccessorTable = 
            new pb::FieldAccess.FieldAccessorTable<global::com.itstack.bean.CompanyBean, global::com.itstack.bean.CompanyBean.Builder>(internal__static_com_itstack_bean_CompanyBean__Descriptor,
                new string[] { "JobSeniority", "CompanyName", "Salary", });
        return null;
      };
      pbd::FileDescriptor.InternalBuildGeneratedFileFrom(descriptorData,
          new pbd::FileDescriptor[] {
          }, assigner);
    }
    #endregion
    
  }
  #region Enums
  public enum EmpEnum {
    Harmast = 1,
    Manage = 2,
    Common = 3,
  }
  
  #endregion
  
  #region Messages
  public sealed partial class EmpBean : pb::GeneratedMessage<EmpBean, EmpBean.Builder> {
    private static readonly EmpBean defaultInstance = new Builder().BuildPartial();
    public static EmpBean DefaultInstance {
      get { return defaultInstance; }
    }
    
    public override EmpBean DefaultInstanceForType {
      get { return defaultInstance; }
    }
    
    protected override EmpBean ThisMessage {
      get { return this; }
    }
    
    public static pbd::MessageDescriptor Descriptor {
      get { return global::com.itstack.bean.ProtoEmpBean.internal__static_com_itstack_bean_EmpBean__Descriptor; }
    }
    
    protected override pb::FieldAccess.FieldAccessorTable<EmpBean, EmpBean.Builder> InternalFieldAccessors {
      get { return global::com.itstack.bean.ProtoEmpBean.internal__static_com_itstack_bean_EmpBean__FieldAccessorTable; }
    }
    
    public const int EmpNameFieldNumber = 1;
    private bool hasEmpName;
    private string empName_ = "";
    public bool HasEmpName {
      get { return hasEmpName; }
    }
    public string EmpName {
      get { return empName_; }
    }
    
    public const int EmpQQFieldNumber = 2;
    private bool hasEmpQQ;
    private string empQQ_ = "";
    public bool HasEmpQQ {
      get { return hasEmpQQ; }
    }
    public string EmpQQ {
      get { return empQQ_; }
    }
    
    public const int EmpInDateFieldNumber = 3;
    private bool hasEmpInDate;
    private string empInDate_ = "";
    public bool HasEmpInDate {
      get { return hasEmpInDate; }
    }
    public string EmpInDate {
      get { return empInDate_; }
    }
    
    public const int EmpCompanyFieldNumber = 4;
    private pbc::PopsicleList<global::com.itstack.bean.CompanyBean> empCompany_ = new pbc::PopsicleList<global::com.itstack.bean.CompanyBean>();
    public scg::IList<global::com.itstack.bean.CompanyBean> EmpCompanyList {
      get { return empCompany_; }
    }
    public int EmpCompanyCount {
      get { return empCompany_.Count; }
    }
    public global::com.itstack.bean.CompanyBean GetEmpCompany(int index) {
      return empCompany_[index];
    }
    
    public const int EmpTypeFieldNumber = 5;
    private bool hasEmpType;
    private global::com.itstack.bean.EmpEnum empType_ = global::com.itstack.bean.EmpEnum.Harmast;
    public bool HasEmpType {
      get { return hasEmpType; }
    }
    public global::com.itstack.bean.EmpEnum EmpType {
      get { return empType_; }
    }
    
    public override bool IsInitialized {
      get {
        if (!hasEmpName) return false;
        if (!hasEmpQQ) return false;
        if (!hasEmpInDate) return false;
        if (!hasEmpType) return false;
        foreach (global::com.itstack.bean.CompanyBean element in EmpCompanyList) {
          if (!element.IsInitialized) return false;
        }
        return true;
      }
    }
    
    public override void WriteTo(pb::CodedOutputStream output) {
      int size = SerializedSize;
      if (HasEmpName) {
        output.WriteString(1, EmpName);
      }
      if (HasEmpQQ) {
        output.WriteString(2, EmpQQ);
      }
      if (HasEmpInDate) {
        output.WriteString(3, EmpInDate);
      }
      foreach (global::com.itstack.bean.CompanyBean element in EmpCompanyList) {
        output.WriteMessage(4, element);
      }
      if (HasEmpType) {
        output.WriteEnum(5, (int) EmpType);
      }
      UnknownFields.WriteTo(output);
    }
    
    private int memoizedSerializedSize = -1;
    public override int SerializedSize {
      get {
        int size = memoizedSerializedSize;
        if (size != -1) return size;
        
        size = 0;
        if (HasEmpName) {
          size += pb::CodedOutputStream.ComputeStringSize(1, EmpName);
        }
        if (HasEmpQQ) {
          size += pb::CodedOutputStream.ComputeStringSize(2, EmpQQ);
        }
        if (HasEmpInDate) {
          size += pb::CodedOutputStream.ComputeStringSize(3, EmpInDate);
        }
        foreach (global::com.itstack.bean.CompanyBean element in EmpCompanyList) {
          size += pb::CodedOutputStream.ComputeMessageSize(4, element);
        }
        if (HasEmpType) {
          size += pb::CodedOutputStream.ComputeEnumSize(5, (int) EmpType);
        }
        size += UnknownFields.SerializedSize;
        memoizedSerializedSize = size;
        return size;
      }
    }
    
    public static EmpBean ParseFrom(pb::ByteString data) {
      return ((Builder) CreateBuilder().MergeFrom(data)).BuildParsed();
    }
    public static EmpBean ParseFrom(pb::ByteString data, pb::ExtensionRegistry extensionRegistry) {
      return ((Builder) CreateBuilder().MergeFrom(data, extensionRegistry)).BuildParsed();
    }
    public static EmpBean ParseFrom(byte[] data) {
      return ((Builder) CreateBuilder().MergeFrom(data)).BuildParsed();
    }
    public static EmpBean ParseFrom(byte[] data, pb::ExtensionRegistry extensionRegistry) {
      return ((Builder) CreateBuilder().MergeFrom(data, extensionRegistry)).BuildParsed();
    }
    public static EmpBean ParseFrom(global::System.IO.Stream input) {
      return ((Builder) CreateBuilder().MergeFrom(input)).BuildParsed();
    }
    public static EmpBean ParseFrom(global::System.IO.Stream input, pb::ExtensionRegistry extensionRegistry) {
      return ((Builder) CreateBuilder().MergeFrom(input, extensionRegistry)).BuildParsed();
    }
    public static EmpBean ParseDelimitedFrom(global::System.IO.Stream input) {
      return CreateBuilder().MergeDelimitedFrom(input).BuildParsed();
    }
    public static EmpBean ParseDelimitedFrom(global::System.IO.Stream input, pb::ExtensionRegistry extensionRegistry) {
      return CreateBuilder().MergeDelimitedFrom(input, extensionRegistry).BuildParsed();
    }
    public static EmpBean ParseFrom(pb::CodedInputStream input) {
      return ((Builder) CreateBuilder().MergeFrom(input)).BuildParsed();
    }
    public static EmpBean ParseFrom(pb::CodedInputStream input, pb::ExtensionRegistry extensionRegistry) {
      return ((Builder) CreateBuilder().MergeFrom(input, extensionRegistry)).BuildParsed();
    }
    public static Builder CreateBuilder() { return new Builder(); }
    public override Builder ToBuilder() { return CreateBuilder(this); }
    public override Builder CreateBuilderForType() { return new Builder(); }
    public static Builder CreateBuilder(EmpBean prototype) {
      return (Builder) new Builder().MergeFrom(prototype);
    }
    
    public sealed partial class Builder : pb::GeneratedBuilder<EmpBean, Builder> {
      protected override Builder ThisBuilder {
        get { return this; }
      }
      public Builder() {}
      
      EmpBean result = new EmpBean();
      
      protected override EmpBean MessageBeingBuilt {
        get { return result; }
      }
      
      public override Builder Clear() {
        result = new EmpBean();
        return this;
      }
      
      public override Builder Clone() {
        return new Builder().MergeFrom(result);
      }
      
      public override pbd::MessageDescriptor DescriptorForType {
        get { return global::com.itstack.bean.EmpBean.Descriptor; }
      }
      
      public override EmpBean DefaultInstanceForType {
        get { return global::com.itstack.bean.EmpBean.DefaultInstance; }
      }
      
      public override EmpBean BuildPartial() {
        if (result == null) {
          throw new global::System.InvalidOperationException("build() has already been called on this Builder");
        }
        result.empCompany_.MakeReadOnly();
        EmpBean returnMe = result;
        result = null;
        return returnMe;
      }
      
      public override Builder MergeFrom(pb::IMessage other) {
        if (other is EmpBean) {
          return MergeFrom((EmpBean) other);
        } else {
          base.MergeFrom(other);
          return this;
        }
      }
      
      public override Builder MergeFrom(EmpBean other) {
        if (other == global::com.itstack.bean.EmpBean.DefaultInstance) return this;
        if (other.HasEmpName) {
          EmpName = other.EmpName;
        }
        if (other.HasEmpQQ) {
          EmpQQ = other.EmpQQ;
        }
        if (other.HasEmpInDate) {
          EmpInDate = other.EmpInDate;
        }
        if (other.empCompany_.Count != 0) {
          base.AddRange(other.empCompany_, result.empCompany_);
        }
        if (other.HasEmpType) {
          EmpType = other.EmpType;
        }
        this.MergeUnknownFields(other.UnknownFields);
        return this;
      }
      
      public override Builder MergeFrom(pb::CodedInputStream input) {
        return MergeFrom(input, pb::ExtensionRegistry.Empty);
      }
      
      public override Builder MergeFrom(pb::CodedInputStream input, pb::ExtensionRegistry extensionRegistry) {
        pb::UnknownFieldSet.Builder unknownFields = null;
        while (true) {
          uint tag = input.ReadTag();
          switch (tag) {
            case 0: {
              if (unknownFields != null) {
                this.UnknownFields = unknownFields.Build();
              }
              return this;
            }
            default: {
              if (pb::WireFormat.IsEndGroupTag(tag)) {
                if (unknownFields != null) {
                  this.UnknownFields = unknownFields.Build();
                }
                return this;
              }
              if (unknownFields == null) {
                unknownFields = pb::UnknownFieldSet.CreateBuilder(this.UnknownFields);
              }
              ParseUnknownField(input, unknownFields, extensionRegistry, tag);
              break;
            }
            case 10: {
              EmpName = input.ReadString();
              break;
            }
            case 18: {
              EmpQQ = input.ReadString();
              break;
            }
            case 26: {
              EmpInDate = input.ReadString();
              break;
            }
            case 34: {
              global::com.itstack.bean.CompanyBean.Builder subBuilder = global::com.itstack.bean.CompanyBean.CreateBuilder();
              input.ReadMessage(subBuilder, extensionRegistry);
              AddEmpCompany(subBuilder.BuildPartial());
              break;
            }
            case 40: {
              int rawValue = input.ReadEnum();
              if (!global::System.Enum.IsDefined(typeof(global::com.itstack.bean.EmpEnum), rawValue)) {
                if (unknownFields == null) {
                  unknownFields = pb::UnknownFieldSet.CreateBuilder(this.UnknownFields);
                }
                unknownFields.MergeVarintField(5, (ulong) rawValue);
              } else {
                EmpType = (global::com.itstack.bean.EmpEnum) rawValue;
              }
              break;
            }
          }
        }
      }
      
      
      public bool HasEmpName {
        get { return result.HasEmpName; }
      }
      public string EmpName {
        get { return result.EmpName; }
        set { SetEmpName(value); }
      }
      public Builder SetEmpName(string value) {
        pb::ThrowHelper.ThrowIfNull(value, "value");
        result.hasEmpName = true;
        result.empName_ = value;
        return this;
      }
      public Builder ClearEmpName() {
        result.hasEmpName = false;
        result.empName_ = "";
        return this;
      }
      
      public bool HasEmpQQ {
        get { return result.HasEmpQQ; }
      }
      public string EmpQQ {
        get { return result.EmpQQ; }
        set { SetEmpQQ(value); }
      }
      public Builder SetEmpQQ(string value) {
        pb::ThrowHelper.ThrowIfNull(value, "value");
        result.hasEmpQQ = true;
        result.empQQ_ = value;
        return this;
      }
      public Builder ClearEmpQQ() {
        result.hasEmpQQ = false;
        result.empQQ_ = "";
        return this;
      }
      
      public bool HasEmpInDate {
        get { return result.HasEmpInDate; }
      }
      public string EmpInDate {
        get { return result.EmpInDate; }
        set { SetEmpInDate(value); }
      }
      public Builder SetEmpInDate(string value) {
        pb::ThrowHelper.ThrowIfNull(value, "value");
        result.hasEmpInDate = true;
        result.empInDate_ = value;
        return this;
      }
      public Builder ClearEmpInDate() {
        result.hasEmpInDate = false;
        result.empInDate_ = "";
        return this;
      }
      
      public pbc::IPopsicleList<global::com.itstack.bean.CompanyBean> EmpCompanyList {
        get { return result.empCompany_; }
      }
      public int EmpCompanyCount {
        get { return result.EmpCompanyCount; }
      }
      public global::com.itstack.bean.CompanyBean GetEmpCompany(int index) {
        return result.GetEmpCompany(index);
      }
      public Builder SetEmpCompany(int index, global::com.itstack.bean.CompanyBean value) {
        pb::ThrowHelper.ThrowIfNull(value, "value");
        result.empCompany_[index] = value;
        return this;
      }
      public Builder SetEmpCompany(int index, global::com.itstack.bean.CompanyBean.Builder builderForValue) {
        pb::ThrowHelper.ThrowIfNull(builderForValue, "builderForValue");
        result.empCompany_[index] = builderForValue.Build();
        return this;
      }
      public Builder AddEmpCompany(global::com.itstack.bean.CompanyBean value) {
        pb::ThrowHelper.ThrowIfNull(value, "value");
        result.empCompany_.Add(value);
        return this;
      }
      public Builder AddEmpCompany(global::com.itstack.bean.CompanyBean.Builder builderForValue) {
        pb::ThrowHelper.ThrowIfNull(builderForValue, "builderForValue");
        result.empCompany_.Add(builderForValue.Build());
        return this;
      }
      public Builder AddRangeEmpCompany(scg::IEnumerable<global::com.itstack.bean.CompanyBean> values) {
        base.AddRange(values, result.empCompany_);
        return this;
      }
      public Builder ClearEmpCompany() {
        result.empCompany_.Clear();
        return this;
      }
      
      public bool HasEmpType {
       get { return result.HasEmpType; }
      }
      public global::com.itstack.bean.EmpEnum EmpType {
        get { return result.EmpType; }
        set { SetEmpType(value); }
      }
      public Builder SetEmpType(global::com.itstack.bean.EmpEnum value) {
        result.hasEmpType = true;
        result.empType_ = value;
        return this;
      }
      public Builder ClearEmpType() {
        result.hasEmpType = false;
        result.empType_ = global::com.itstack.bean.EmpEnum.Harmast;
        return this;
      }
    }
    static EmpBean() {
      object.ReferenceEquals(global::com.itstack.bean.ProtoEmpBean.Descriptor, null);
    }
  }
  
  public sealed partial class CompanyBean : pb::GeneratedMessage<CompanyBean, CompanyBean.Builder> {
    private static readonly CompanyBean defaultInstance = new Builder().BuildPartial();
    public static CompanyBean DefaultInstance {
      get { return defaultInstance; }
    }
    
    public override CompanyBean DefaultInstanceForType {
      get { return defaultInstance; }
    }
    
    protected override CompanyBean ThisMessage {
      get { return this; }
    }
    
    public static pbd::MessageDescriptor Descriptor {
      get { return global::com.itstack.bean.ProtoEmpBean.internal__static_com_itstack_bean_CompanyBean__Descriptor; }
    }
    
    protected override pb::FieldAccess.FieldAccessorTable<CompanyBean, CompanyBean.Builder> InternalFieldAccessors {
      get { return global::com.itstack.bean.ProtoEmpBean.internal__static_com_itstack_bean_CompanyBean__FieldAccessorTable; }
    }
    
    public const int JobSeniorityFieldNumber = 1;
    private bool hasJobSeniority;
    private string jobSeniority_ = "";
    public bool HasJobSeniority {
      get { return hasJobSeniority; }
    }
    public string JobSeniority {
      get { return jobSeniority_; }
    }
    
    public const int CompanyNameFieldNumber = 2;
    private bool hasCompanyName;
    private string companyName_ = "";
    public bool HasCompanyName {
      get { return hasCompanyName; }
    }
    public string CompanyName {
      get { return companyName_; }
    }
    
    public const int SalaryFieldNumber = 3;
    private bool hasSalary;
    private string salary_ = "";
    public bool HasSalary {
      get { return hasSalary; }
    }
    public string Salary {
      get { return salary_; }
    }
    
    public override bool IsInitialized {
      get {
        if (!hasJobSeniority) return false;
        if (!hasCompanyName) return false;
        return true;
      }
    }
    
    public override void WriteTo(pb::CodedOutputStream output) {
      int size = SerializedSize;
      if (HasJobSeniority) {
        output.WriteString(1, JobSeniority);
      }
      if (HasCompanyName) {
        output.WriteString(2, CompanyName);
      }
      if (HasSalary) {
        output.WriteString(3, Salary);
      }
      UnknownFields.WriteTo(output);
    }
    
    private int memoizedSerializedSize = -1;
    public override int SerializedSize {
      get {
        int size = memoizedSerializedSize;
        if (size != -1) return size;
        
        size = 0;
        if (HasJobSeniority) {
          size += pb::CodedOutputStream.ComputeStringSize(1, JobSeniority);
        }
        if (HasCompanyName) {
          size += pb::CodedOutputStream.ComputeStringSize(2, CompanyName);
        }
        if (HasSalary) {
          size += pb::CodedOutputStream.ComputeStringSize(3, Salary);
        }
        size += UnknownFields.SerializedSize;
        memoizedSerializedSize = size;
        return size;
      }
    }
    
    public static CompanyBean ParseFrom(pb::ByteString data) {
      return ((Builder) CreateBuilder().MergeFrom(data)).BuildParsed();
    }
    public static CompanyBean ParseFrom(pb::ByteString data, pb::ExtensionRegistry extensionRegistry) {
      return ((Builder) CreateBuilder().MergeFrom(data, extensionRegistry)).BuildParsed();
    }
    public static CompanyBean ParseFrom(byte[] data) {
      return ((Builder) CreateBuilder().MergeFrom(data)).BuildParsed();
    }
    public static CompanyBean ParseFrom(byte[] data, pb::ExtensionRegistry extensionRegistry) {
      return ((Builder) CreateBuilder().MergeFrom(data, extensionRegistry)).BuildParsed();
    }
    public static CompanyBean ParseFrom(global::System.IO.Stream input) {
      return ((Builder) CreateBuilder().MergeFrom(input)).BuildParsed();
    }
    public static CompanyBean ParseFrom(global::System.IO.Stream input, pb::ExtensionRegistry extensionRegistry) {
      return ((Builder) CreateBuilder().MergeFrom(input, extensionRegistry)).BuildParsed();
    }
    public static CompanyBean ParseDelimitedFrom(global::System.IO.Stream input) {
      return CreateBuilder().MergeDelimitedFrom(input).BuildParsed();
    }
    public static CompanyBean ParseDelimitedFrom(global::System.IO.Stream input, pb::ExtensionRegistry extensionRegistry) {
      return CreateBuilder().MergeDelimitedFrom(input, extensionRegistry).BuildParsed();
    }
    public static CompanyBean ParseFrom(pb::CodedInputStream input) {
      return ((Builder) CreateBuilder().MergeFrom(input)).BuildParsed();
    }
    public static CompanyBean ParseFrom(pb::CodedInputStream input, pb::ExtensionRegistry extensionRegistry) {
      return ((Builder) CreateBuilder().MergeFrom(input, extensionRegistry)).BuildParsed();
    }
    public static Builder CreateBuilder() { return new Builder(); }
    public override Builder ToBuilder() { return CreateBuilder(this); }
    public override Builder CreateBuilderForType() { return new Builder(); }
    public static Builder CreateBuilder(CompanyBean prototype) {
      return (Builder) new Builder().MergeFrom(prototype);
    }
    
    public sealed partial class Builder : pb::GeneratedBuilder<CompanyBean, Builder> {
      protected override Builder ThisBuilder {
        get { return this; }
      }
      public Builder() {}
      
      CompanyBean result = new CompanyBean();
      
      protected override CompanyBean MessageBeingBuilt {
        get { return result; }
      }
      
      public override Builder Clear() {
        result = new CompanyBean();
        return this;
      }
      
      public override Builder Clone() {
        return new Builder().MergeFrom(result);
      }
      
      public override pbd::MessageDescriptor DescriptorForType {
        get { return global::com.itstack.bean.CompanyBean.Descriptor; }
      }
      
      public override CompanyBean DefaultInstanceForType {
        get { return global::com.itstack.bean.CompanyBean.DefaultInstance; }
      }
      
      public override CompanyBean BuildPartial() {
        if (result == null) {
          throw new global::System.InvalidOperationException("build() has already been called on this Builder");
        }
        CompanyBean returnMe = result;
        result = null;
        return returnMe;
      }
      
      public override Builder MergeFrom(pb::IMessage other) {
        if (other is CompanyBean) {
          return MergeFrom((CompanyBean) other);
        } else {
          base.MergeFrom(other);
          return this;
        }
      }
      
      public override Builder MergeFrom(CompanyBean other) {
        if (other == global::com.itstack.bean.CompanyBean.DefaultInstance) return this;
        if (other.HasJobSeniority) {
          JobSeniority = other.JobSeniority;
        }
        if (other.HasCompanyName) {
          CompanyName = other.CompanyName;
        }
        if (other.HasSalary) {
          Salary = other.Salary;
        }
        this.MergeUnknownFields(other.UnknownFields);
        return this;
      }
      
      public override Builder MergeFrom(pb::CodedInputStream input) {
        return MergeFrom(input, pb::ExtensionRegistry.Empty);
      }
      
      public override Builder MergeFrom(pb::CodedInputStream input, pb::ExtensionRegistry extensionRegistry) {
        pb::UnknownFieldSet.Builder unknownFields = null;
        while (true) {
          uint tag = input.ReadTag();
          switch (tag) {
            case 0: {
              if (unknownFields != null) {
                this.UnknownFields = unknownFields.Build();
              }
              return this;
            }
            default: {
              if (pb::WireFormat.IsEndGroupTag(tag)) {
                if (unknownFields != null) {
                  this.UnknownFields = unknownFields.Build();
                }
                return this;
              }
              if (unknownFields == null) {
                unknownFields = pb::UnknownFieldSet.CreateBuilder(this.UnknownFields);
              }
              ParseUnknownField(input, unknownFields, extensionRegistry, tag);
              break;
            }
            case 10: {
              JobSeniority = input.ReadString();
              break;
            }
            case 18: {
              CompanyName = input.ReadString();
              break;
            }
            case 26: {
              Salary = input.ReadString();
              break;
            }
          }
        }
      }
      
      
      public bool HasJobSeniority {
        get { return result.HasJobSeniority; }
      }
      public string JobSeniority {
        get { return result.JobSeniority; }
        set { SetJobSeniority(value); }
      }
      public Builder SetJobSeniority(string value) {
        pb::ThrowHelper.ThrowIfNull(value, "value");
        result.hasJobSeniority = true;
        result.jobSeniority_ = value;
        return this;
      }
      public Builder ClearJobSeniority() {
        result.hasJobSeniority = false;
        result.jobSeniority_ = "";
        return this;
      }
      
      public bool HasCompanyName {
        get { return result.HasCompanyName; }
      }
      public string CompanyName {
        get { return result.CompanyName; }
        set { SetCompanyName(value); }
      }
      public Builder SetCompanyName(string value) {
        pb::ThrowHelper.ThrowIfNull(value, "value");
        result.hasCompanyName = true;
        result.companyName_ = value;
        return this;
      }
      public Builder ClearCompanyName() {
        result.hasCompanyName = false;
        result.companyName_ = "";
        return this;
      }
      
      public bool HasSalary {
        get { return result.HasSalary; }
      }
      public string Salary {
        get { return result.Salary; }
        set { SetSalary(value); }
      }
      public Builder SetSalary(string value) {
        pb::ThrowHelper.ThrowIfNull(value, "value");
        result.hasSalary = true;
        result.salary_ = value;
        return this;
      }
      public Builder ClearSalary() {
        result.hasSalary = false;
        result.salary_ = "";
        return this;
      }
    }
    static CompanyBean() {
      object.ReferenceEquals(global::com.itstack.bean.ProtoEmpBean.Descriptor, null);
    }
  }
  
  #endregion
  
}
