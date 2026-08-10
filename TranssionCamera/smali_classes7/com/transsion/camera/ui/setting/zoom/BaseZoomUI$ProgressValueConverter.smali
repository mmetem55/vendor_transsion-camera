.class Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;
.super Ljava/lang/Object;
.source "BaseZoomUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressValueConverter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)V
    .locals 0

    .line 984
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$1;)V
    .locals 0

    .line 984
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;)V
    .locals 0

    .line 984
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->setupConverterState()V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;I)Z
    .locals 0

    .line 984
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->updateConverterState(I)Z

    move-result p0

    return p0
.end method

.method private releaseConverterStates()V
    .locals 2

    .line 997
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$902(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    .line 998
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1002(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    .line 999
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1102(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    .line 1000
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-static {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1202(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    return-void
.end method

.method private satSupport()Z
    .locals 3

    .line 1086
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    .line 1087
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatCameraId:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1090
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportSat:Z

    if-nez v0, :cond_1

    return v2

    .line 1093
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeFeatureSupport:Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;

    if-nez p0, :cond_2

    return v2

    .line 1096
    :cond_2
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;->supportSat()Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v2
.end method

.method private setupConverterState()V
    .locals 9

    .line 1004
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->releaseConverterStates()V

    .line 1006
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->satSupport()Z

    move-result v0

    .line 1007
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    iget-boolean v2, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportWide:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 1009
    :goto_0
    iget-boolean v5, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportTele:Z

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    .line 1011
    :goto_1
    iget-object v1, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 1012
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMaxZoom()I

    move-result v1

    .line 1013
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    iget-boolean v5, v4, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperMoonMode:Z

    const/16 v6, 0x1f4

    const/16 v7, 0x1770

    if-eqz v5, :cond_2

    .line 1016
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$TeleRangeConverterState;

    invoke-direct {v0, v4, v6, v7}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$TeleRangeConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;II)V

    invoke-static {v4, v0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1202(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    .line 1018
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1200(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1302(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    return-void

    :cond_2
    const/16 v5, 0x3c

    if-eqz v0, :cond_3

    .line 1022
    iget-boolean v8, v4, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatSupportWide:Z

    if-eqz v8, :cond_3

    .line 1023
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$SatSupportWideConverterState;

    invoke-direct {v0, v4, v5, v7}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$SatSupportWideConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;II)V

    invoke-static {v4, v0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$902(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    .line 1025
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$900(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1302(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    return-void

    :cond_3
    const/16 v8, 0x64

    if-eqz v2, :cond_4

    .line 1030
    new-instance v2, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$WideRangeConverterState;

    invoke-direct {v2, v4, v5, v8}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$WideRangeConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;II)V

    invoke-static {v4, v2}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1002(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    :cond_4
    if-eqz v0, :cond_6

    .line 1034
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    iget-boolean v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatSupportWide:Z

    if-nez v2, :cond_6

    .line 1035
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$SatSupportWideConverterState;

    invoke-direct {v1, v0, v8, v7}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$SatSupportWideConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;II)V

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$902(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    .line 1037
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsSat()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1038
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$900(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1302(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    goto :goto_2

    .line 1040
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1000(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1302(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    :goto_2
    return-void

    :cond_6
    const/16 v0, 0x3e8

    if-eqz v3, :cond_d

    const/16 v2, 0x5dc

    if-ne v1, v7, :cond_7

    .line 1050
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVideoMode:Z

    if-nez v1, :cond_8

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInFunVideoMode:Z

    if-nez v1, :cond_8

    iget-boolean v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInTimeLapseVideoMode:Z

    if-eqz v0, :cond_c

    goto :goto_3

    :cond_7
    const/16 v6, 0xc8

    .line 1059
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    iget-boolean v3, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVideoMode:Z

    if-eqz v3, :cond_9

    :cond_8
    :goto_3
    move v7, v2

    goto :goto_5

    .line 1061
    :cond_9
    iget-boolean v2, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInFunVideoMode:Z

    if-nez v2, :cond_b

    iget-boolean v1, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInTimeLapseVideoMode:Z

    if-eqz v1, :cond_a

    goto :goto_4

    :cond_a
    const/16 v7, 0x7d0

    goto :goto_5

    :cond_b
    :goto_4
    move v7, v0

    .line 1067
    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$TeleRangeConverterState;

    invoke-direct {v1, v0, v6, v7}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$TeleRangeConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;II)V

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1202(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    move v0, v6

    .line 1073
    :cond_d
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    new-instance v2, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$NormalRangeConverterState;

    invoke-direct {v2, v1, v8, v0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$NormalRangeConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;II)V

    invoke-static {v1, v2}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1102(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    .line 1076
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsWide()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1077
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1000(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1302(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    goto :goto_6

    .line 1078
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsTele()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1079
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1200(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1302(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    goto :goto_6

    .line 1081
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1100(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1302(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    :goto_6
    return-void
.end method

.method private updateConverterState(I)Z
    .locals 2

    .line 1101
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1000(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1400(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1102
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isIszZoomStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1100(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;->enter(I)Z

    move-result p0

    goto :goto_0

    .line 1105
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1000(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;->enter(I)Z

    move-result p0

    goto :goto_0

    .line 1107
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1200(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1400(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1108
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1200(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;->enter(I)Z

    move-result p0

    goto :goto_0

    .line 1109
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$900(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1400(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1110
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$900(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;->enter(I)Z

    move-result p0

    goto :goto_0

    .line 1112
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$ProgressValueConverter;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1100(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;->enter(I)Z

    move-result p0

    :goto_0
    return p0
.end method
