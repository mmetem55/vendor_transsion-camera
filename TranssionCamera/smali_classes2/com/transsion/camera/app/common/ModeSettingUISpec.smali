.class public Lcom/transsion/camera/app/common/ModeSettingUISpec;
.super Ljava/lang/Object;
.source "ModeSettingUISpec.java"


# instance fields
.field private mAeAfLockSupport:Z

.field private mAodModeSettingUIEntries:[Ljava/lang/String;

.field private mDefaultSecondZoomValue:I

.field private mFrontWideCameraSettingUIEntries:[Ljava/lang/String;

.field private mIsSupportAuxPreview:Z

.field private mIsSupportFrontWideCamera:Z

.field private mIsSupportMacroCamera:Z

.field private mIsSupportPreviewHoverForm:Z

.field private mIsSupportSat:Z

.field private mIsSupportShare:Z

.field private mIsSupportTeleCamera:Z

.field private mIsSupportVideoCamera:Z

.field private mIsSupportWideCamera:Z

.field private mModeGuideLayoutsArrayId:I

.field private mModeInteractiveSettingUIEntries:[Ljava/lang/String;

.field private mModeOffsetPadding:I

.field private mModeSettingUIEntries:[Ljava/lang/String;

.field private mModeSupportAlgos:[I

.field private mName:Ljava/lang/String;

.field private mOptionSettingUIEntries:[Ljava/lang/String;

.field private mPreferenceSettingUIEntries:[Ljava/lang/String;

.field private mSettingGuideLayoutsArrayId:I

.field private mTopBarSettingUIEntries:[Ljava/lang/String;

.field private mWideCameraSettingUIEntries:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportWideCamera:Z

    .line 26
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportMacroCamera:Z

    .line 27
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportFrontWideCamera:Z

    .line 28
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportVideoCamera:Z

    .line 29
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportTeleCamera:Z

    .line 30
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportAuxPreview:Z

    const/4 v1, -0x1

    .line 32
    iput v1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeGuideLayoutsArrayId:I

    .line 33
    iput v1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mSettingGuideLayoutsArrayId:I

    .line 34
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportSat:Z

    .line 35
    iput v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeOffsetPadding:I

    .line 36
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mAeAfLockSupport:Z

    .line 37
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportShare:Z

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportPreviewHoverForm:Z

    const/16 v0, 0xc8

    .line 39
    iput v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mDefaultSecondZoomValue:I

    .line 42
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public aeAfLockSupport()Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mAeAfLockSupport:Z

    return p0
.end method

.method public getAodModeSettingUIEntries()[Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mAodModeSettingUIEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getFrontWideCameraSettingUIEntries()[Ljava/lang/String;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mFrontWideCameraSettingUIEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getModeGuideLayoutsArrayId()I
    .locals 0

    .line 166
    iget p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeGuideLayoutsArrayId:I

    return p0
.end method

.method public getModeInteractiveSettingUIEntries()[Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeInteractiveSettingUIEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getModeOffsetPadding()I
    .locals 0

    .line 190
    iget p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeOffsetPadding:I

    return p0
.end method

.method public getModeSettingUIEntries()[Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeSettingUIEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getModeSupportAlgos()[I
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeSupportAlgos:[I

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getOptionSettingUIEntries()[Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mOptionSettingUIEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getPreferenceSettingUIEntries()[Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mPreferenceSettingUIEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getSecondDefaultZoomValue()I
    .locals 0

    .line 230
    iget p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mDefaultSecondZoomValue:I

    return p0
.end method

.method public getSettingGuideLayoutsArrayId()I
    .locals 0

    .line 174
    iget p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mSettingGuideLayoutsArrayId:I

    return p0
.end method

.method public getTopBarSettingUIEntries()[Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mTopBarSettingUIEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getWideCameraSettingUIEntries()[Ljava/lang/String;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mWideCameraSettingUIEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public isSupportAuxPreview()Z
    .locals 0

    .line 198
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportAuxPreview:Z

    return p0
.end method

.method public isSupportFrontWideCamera()Z
    .locals 0

    .line 138
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportFrontWideCamera:Z

    return p0
.end method

.method public isSupportMacroCamera()Z
    .locals 0

    .line 130
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportMacroCamera:Z

    return p0
.end method

.method public isSupportPreviewHoverForm()Z
    .locals 0

    .line 222
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportPreviewHoverForm:Z

    return p0
.end method

.method public isSupportSat()Z
    .locals 0

    .line 182
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportSat:Z

    return p0
.end method

.method public isSupportShare()Z
    .locals 0

    .line 210
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportShare:Z

    return p0
.end method

.method public isSupportTeleCamera()Z
    .locals 0

    .line 154
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportTeleCamera:Z

    return p0
.end method

.method public isSupportVideoCamera()Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportVideoCamera:Z

    return p0
.end method

.method public isSupportWideCamera()Z
    .locals 0

    .line 122
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportWideCamera:Z

    return p0
.end method

.method public setAeAfLockSupport(Z)V
    .locals 0

    .line 202
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mAeAfLockSupport:Z

    return-void
.end method

.method public setAodModeSettingUIEntries([Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mAodModeSettingUIEntries:[Ljava/lang/String;

    return-void
.end method

.method public setFrontWideCameraSettingUIEntries([Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mFrontWideCameraSettingUIEntries:[Ljava/lang/String;

    return-void
.end method

.method public setModeGuideLayoutsArrayId(I)V
    .locals 0

    .line 162
    iput p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeGuideLayoutsArrayId:I

    return-void
.end method

.method public setModeInteractiveSettingUIEntries([Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeInteractiveSettingUIEntries:[Ljava/lang/String;

    return-void
.end method

.method public setModeOffsetPadding(I)V
    .locals 0

    .line 186
    iput p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeOffsetPadding:I

    return-void
.end method

.method public setModeSettingUIEntries([Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeSettingUIEntries:[Ljava/lang/String;

    return-void
.end method

.method public setModeSupportAlgos([I)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeSupportAlgos:[I

    return-void
.end method

.method public setOptionSettingUIEntries([Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mOptionSettingUIEntries:[Ljava/lang/String;

    return-void
.end method

.method public setPreferenceSettingUIEntries([Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mPreferenceSettingUIEntries:[Ljava/lang/String;

    return-void
.end method

.method public setSecondDefautZoomValue(I)V
    .locals 0

    .line 226
    iput p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mDefaultSecondZoomValue:I

    return-void
.end method

.method public setSettingGuideLayoutsArrayId(I)V
    .locals 0

    .line 170
    iput p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mSettingGuideLayoutsArrayId:I

    return-void
.end method

.method public setSupportAuxPreview(Z)V
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportAuxPreview:Z

    return-void
.end method

.method public setSupportFrontWideCamera(Z)V
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportFrontWideCamera:Z

    return-void
.end method

.method public setSupportMacroCamera(Z)V
    .locals 0

    .line 134
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportMacroCamera:Z

    return-void
.end method

.method public setSupportPreviewHoverForm(Z)V
    .locals 0

    .line 218
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportPreviewHoverForm:Z

    return-void
.end method

.method public setSupportSat(Z)V
    .locals 0

    .line 178
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportSat:Z

    return-void
.end method

.method public setSupportShare(Z)V
    .locals 0

    .line 214
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportShare:Z

    return-void
.end method

.method public setSupportTeleCamera(Z)V
    .locals 0

    .line 158
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportTeleCamera:Z

    return-void
.end method

.method public setSupportVideoCamera(Z)V
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportVideoCamera:Z

    return-void
.end method

.method public setSupportWideCamera(Z)V
    .locals 0

    .line 126
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportWideCamera:Z

    return-void
.end method

.method public setTopBarSettingUIEntries([Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mTopBarSettingUIEntries:[Ljava/lang/String;

    return-void
.end method

.method public setWideCameraSettingUIEntries([Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mWideCameraSettingUIEntries:[Ljava/lang/String;

    return-void
.end method
