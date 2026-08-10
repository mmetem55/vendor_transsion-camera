.class public Lcom/transsion/camera/app/mode/ModePickerConfig;
.super Ljava/lang/Object;
.source "ModePickerConfig.java"


# instance fields
.field private final mDefaultModeCountInTab:I

.field private final mModePickerStyle:I

.field private final mModeScrollUISupport:Z

.field private final mPanelGuideSupport:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportMoreMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 41
    iput v1, p0, Lcom/transsion/camera/app/mode/ModePickerConfig;->mModePickerStyle:I

    goto :goto_0

    :cond_0
    const-string v0, "mode_picker_style"

    .line 43
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/mode/ModePickerConfig;->mModePickerStyle:I

    :goto_0
    const-string v0, "initial_modes_number_in_tab"

    .line 46
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/mode/ModePickerConfig;->mDefaultModeCountInTab:I

    .line 48
    invoke-virtual {p0}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iput-boolean v1, p0, Lcom/transsion/camera/app/mode/ModePickerConfig;->mPanelGuideSupport:Z

    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "camera_mode_panel_guide_support"

    .line 52
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/mode/ModePickerConfig;->mPanelGuideSupport:Z

    .line 57
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "is_support_mode_change_icon"

    .line 56
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/mode/ModePickerConfig;->mModeScrollUISupport:Z

    return-void
.end method


# virtual methods
.method public defaultModeCountInTab()I
    .locals 0

    .line 78
    iget p0, p0, Lcom/transsion/camera/app/mode/ModePickerConfig;->mDefaultModeCountInTab:I

    return p0
.end method

.method public modePickerStyleMore()Z
    .locals 1

    .line 69
    iget p0, p0, Lcom/transsion/camera/app/mode/ModePickerConfig;->mModePickerStyle:I

    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public modePickerStyleNormalMore()Z
    .locals 1

    .line 65
    iget p0, p0, Lcom/transsion/camera/app/mode/ModePickerConfig;->mModePickerStyle:I

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public moreModeSupport()Z
    .locals 2

    .line 73
    iget p0, p0, Lcom/transsion/camera/app/mode/ModePickerConfig;->mModePickerStyle:I

    const/4 v0, 0x1

    if-eq v0, p0, :cond_1

    const/4 v1, 0x2

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
