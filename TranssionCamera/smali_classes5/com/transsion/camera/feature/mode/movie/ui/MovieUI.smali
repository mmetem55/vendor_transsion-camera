.class public Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;
.super Ljava/lang/Object;
.source "MovieUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/ui/IMovieUI;


# static fields
.field private static final CONFIRM_FRAGMENT_TAG:Ljava/lang/String; = "confirm"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mConfirmDialog:Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private final mRecorderUI:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

.field private mSelectedTheme:Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;

.field private final mShutterTranslation:I

.field private final mTemplateUI:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

.field private final mWideCameraTranslation:I


# direct methods
.method public static synthetic $r8$lambda$u5ZSSTGAr7LDUeM9lm66ftZAbpI(Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->onTemplateSelect(Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;)V
    .locals 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mCurrentState:I

    .line 88
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI$1;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

    .line 61
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 62
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getModeInflateRoot()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/movie/R$dimen;->shutter_translation_distance:I

    .line 64
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mShutterTranslation:I

    .line 65
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/movie/R$dimen;->wide_camera_translation_distance:I

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mWideCameraTranslation:I

    .line 67
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    invoke-direct {v0, p1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mTemplateUI:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    .line 68
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-direct {v0, p1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mRecorderUI:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;)Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mRecorderUI:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    return-object p0
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 38
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private isDifferentFromDraft()Z
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory;->getRecordedTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    .line 182
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mSelectedTheme:Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;

    .line 183
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onTemplateSelect(Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;)V
    .locals 3

    .line 84
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTemplateSelect themeConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mSelectedTheme:Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;

    return-void
.end method

.method private showConfirmDialog()V
    .locals 4

    .line 193
    sget v0, Lcom/transsion/camera/feature/movie/R$string;->discard_draft_confirm_message:I

    sget v1, Lcom/transsion/camera/feature/movie/R$string;->discard:I

    sget v2, Lcom/transsion/camera/feature/movie/R$string;->cancel:I

    new-instance v3, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI$2;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI$2;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;)V

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->newInstance(IIILcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;)Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mConfirmDialog:Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;

    .line 209
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    .line 210
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirm"

    .line 209
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 211
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x54

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method


# virtual methods
.method public checkState()V
    .locals 3

    .line 270
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 271
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x6

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public enterRecorder()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mRecorderUI:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mSelectedTheme:Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->updateTheme(Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;)V

    const/4 v0, 0x1

    .line 188
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->updateCurrentState(I)V

    .line 189
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mTemplateUI:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->stopPlay()V

    return-void
.end method

.method public getCurrentThemeName()Ljava/lang/String;
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mSelectedTheme:Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideFlashView()V
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mRecorderUI:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->hideFlashView()V

    return-void
.end method

.method public init(II)V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->couldShowWideCamera(Z)V

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mTemplateUI:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    new-instance v2, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;)V

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->setTemplateSelectListener(Lcom/transsion/camera/feature/mode/movie/ui/template/ITemplateUI$ITemplateSelectListener;)V

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mTemplateUI:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->init(II)V

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mRecorderUI:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->init(II)V

    const/4 p1, 0x1

    .line 106
    invoke-virtual {p0, v1, v1, p1}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->updateCurrentState(IZZ)V

    .line 107
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    return-void
.end method

.method public isFlashOn()Z
    .locals 1

    .line 127
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mCurrentState:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 130
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mRecorderUI:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->isFlashTorch()Z

    move-result p0

    return p0
.end method

.method public onBackPressed()Z
    .locals 3

    .line 216
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mCurrentState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mRecorderUI:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 220
    :cond_0
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->updateCurrentState(I)V

    return v2

    :cond_1
    return v1
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mRecorderUI:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->onScreenFormChanged(IZ)V

    return-void
.end method

.method public onShutterClick()Z
    .locals 1

    .line 168
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mCurrentState:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mSelectedTheme:Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;

    if-eqz v0, :cond_2

    .line 170
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->isDifferentFromDraft()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->showConfirmDialog()V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mTemplateUI:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->getScrollState()I

    move-result v0

    if-nez v0, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->enterRecorder()V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public pause()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mTemplateUI:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->pause()V

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mRecorderUI:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->pause()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mTemplateUI:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->resume()V

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mRecorderUI:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->resume()V

    return-void
.end method

.method public setFlashController(Lcom/transsion/camera/feature/mode/movie/FlashController;)V
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mRecorderUI:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->setFlashController(Lcom/transsion/camera/feature/mode/movie/FlashController;)V

    return-void
.end method

.method public setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mTemplateUI:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void
.end method

.method public setMovieOperator(Lcom/transsion/camera/feature/mode/movie/IMovieOperator;)V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mRecorderUI:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->setMovieOperator(Lcom/transsion/camera/feature/mode/movie/IMovieOperator;)V

    return-void
.end method

.method public setMovieRecorder(Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;)V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mRecorderUI:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->setMovieRecorder(Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;)V

    return-void
.end method

.method public showFlashView()V
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mRecorderUI:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->showFlashView()V

    return-void
.end method

.method public unInit()V
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->couldShowWideCamera(Z)V

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mTemplateUI:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->unInit()V

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mRecorderUI:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->unInit()V

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mConfirmDialog:Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mConfirmDialog:Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 146
    :cond_0
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mCurrentState:I

    if-ne v1, v0, :cond_1

    .line 147
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "unInit in RECORDER state"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v3, -0x1

    invoke-interface {v0, v1, v3, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 150
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x0

    invoke-interface {p0, v1, v0, v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideShutterPanel(ZZIZ)V

    return-void
.end method

.method public updateBatteryStatus(II)V
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mRecorderUI:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->updateBatteryStatus(II)V

    return-void
.end method

.method public updateCurrentState(I)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/transsion/camera/feature/mode/movie/ui/IMovieUI$State;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 239
    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->updateCurrentState(IZZ)V

    return-void
.end method

.method public updateCurrentState(IZZ)V
    .locals 5
    .param p1    # I
        .annotation build Lcom/transsion/camera/feature/mode/movie/ui/IMovieUI$State;
        .end annotation
    .end param

    .line 243
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCurrentState state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", animate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", isinit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mCurrentState:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_1

    .line 247
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->couldShowWideCamera(Z)V

    .line 248
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v4, 0x5f

    invoke-interface {p1, v4}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    if-nez p3, :cond_0

    .line 250
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v3, v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 252
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->hideWideCamera()V

    .line 253
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v3, v3, v2, v3}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideShutterPanel(ZZIZ)V

    .line 255
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mTemplateUI:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    invoke-virtual {p1, v3, p2}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->updateVisibility(ZZ)V

    .line 256
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mRecorderUI:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-virtual {p0, v2, p2}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->updateVisibility(ZZ)V

    goto :goto_0

    .line 258
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->couldShowWideCamera(Z)V

    .line 259
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p3, 0x60

    invoke-interface {p1, p3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 260
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p3, 0x6

    invoke-interface {p1, p3, v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 261
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget p3, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mWideCameraTranslation:I

    invoke-interface {p1, p3, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->translateWideCamera(IZ)V

    .line 262
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget p3, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mShutterTranslation:I

    invoke-interface {p1, v2, v3, p3, v3}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideShutterPanel(ZZIZ)V

    .line 264
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mTemplateUI:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    invoke-virtual {p1, v2, p2}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->updateVisibility(ZZ)V

    .line 265
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mRecorderUI:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-virtual {p0, v3, p2}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->updateVisibility(ZZ)V

    :goto_0
    return-void
.end method

.method public updateFlashValue(Ljava/lang/String;)V
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mRecorderUI:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->updateFlashValue(Ljava/lang/String;)V

    return-void
.end method

.method public updateOrientation(I)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mTemplateUI:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->updateOrientation(I)V

    .line 229
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mRecorderUI:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->updateOrientation(I)V

    return-void
.end method

.method public updateTip()V
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->mTemplateUI:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->updateLandscapeTip()V

    return-void
.end method
