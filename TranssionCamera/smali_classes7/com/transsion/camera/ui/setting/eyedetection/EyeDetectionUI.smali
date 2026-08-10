.class public Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "EyeDetectionUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$StatusChangeListener;,
        Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;,
        Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;
    }
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "key_eye_detection"

.field private static final MSG_HIDE_EYE:I = 0x66

.field private static final MSG_SHOW_EYE:I = 0x65

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mActiveEyeView:Z

.field private mCanShowEyeView:Z

.field private mCurrentRect:Landroid/graphics/Rect;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mEyeResultCallbackImpl:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;

.field private mEyeView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

.field private mFaceCount:I

.field private mFaceId:I

.field private volatile mIsCapturing:Z

.field private mIsEyeViewShowing:Z

.field private mOrientation:I

.field private mPreviewViewRect:Landroid/graphics/Rect;

.field private mStatusChangeListener:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 p1, -0x1

    .line 53
    iput p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceId:I

    .line 54
    iput p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceCount:I

    .line 58
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 60
    new-instance p1, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$StatusChangeListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$StatusChangeListener;

    .line 61
    new-instance p1, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeResultCallbackImpl:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mActiveEyeView:Z

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCanShowEyeView:Z

    .line 64
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mIsCapturing:Z

    .line 66
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCurrentRect:Landroid/graphics/Rect;

    .line 67
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mIsEyeViewShowing:Z

    .line 70
    new-instance p1, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;

    return-void
.end method

.method static synthetic access$300()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 47
    sget-object v0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;[I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->doUpdateEyeView([I)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mIsCapturing:Z

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mActiveEyeView:Z

    return p0
.end method

.method static synthetic access$702(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mActiveEyeView:Z

    return p1
.end method

.method static synthetic access$802(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceId:I

    return p1
.end method

.method private changeRect(Landroid/graphics/Rect;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    .line 275
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int v2, v0, v1

    .line 276
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int v4, v3, p1

    const-wide v5, 0x3fc999999999999aL    # 0.2

    if-le v2, v4, :cond_1

    .line 278
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCurrentRect:Landroid/graphics/Rect;

    int-to-double v7, v1

    int-to-double v9, v2

    mul-double/2addr v9, v5

    sub-double/2addr v7, v9

    double-to-int v1, v7

    iput v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    .line 279
    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    int-to-double v4, p1

    sub-double/2addr v4, v9

    double-to-int p1, v4

    iput p1, p0, Landroid/graphics/Rect;->top:I

    int-to-double v0, v0

    add-double/2addr v0, v9

    double-to-int p1, v0

    .line 280
    iput p1, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    int-to-double v0, v3

    add-double/2addr v0, v9

    double-to-int p1, v0

    .line 281
    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 283
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCurrentRect:Landroid/graphics/Rect;

    sub-int v2, v4, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-double v7, v1

    int-to-double v9, v4

    mul-double/2addr v9, v5

    sub-double/2addr v7, v9

    double-to-int v1, v7

    iput v1, p0, Landroid/graphics/Rect;->left:I

    int-to-double v4, p1

    sub-double/2addr v4, v9

    double-to-int p1, v4

    .line 284
    iput p1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    int-to-double v0, v0

    add-double/2addr v0, v9

    double-to-int p1, v0

    .line 285
    iput p1, p0, Landroid/graphics/Rect;->right:I

    int-to-double v0, v3

    add-double/2addr v0, v9

    double-to-int p1, v0

    .line 286
    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return-void
.end method

.method private doUpdateEyeView([I)V
    .locals 7

    .line 240
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mActiveEyeView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCanShowEyeView:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 246
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    aget v2, p1, v1

    const/4 v3, 0x1

    aget v4, p1, v3

    const/4 v5, 0x2

    aget v5, p1, v5

    const/4 v6, 0x3

    aget v6, p1, v6

    invoke-direct {v0, v2, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 247
    iget v2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceId:I

    const/4 v4, 0x4

    aget v4, p1, v4

    const/4 v5, 0x5

    if-ne v2, v4, :cond_2

    iget v2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceCount:I

    aget v6, p1, v5

    if-eq v2, v6, :cond_1

    goto :goto_0

    .line 252
    :cond_1
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->notifyEyeViewState(Z)V

    .line 253
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 254
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 253
    invoke-static {v0, p1, v2}, Lcom/transsion/camera/utils/CoordinatesUtil;->referenceToViewSpace(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object p1

    .line 255
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->changeRect(Landroid/graphics/Rect;)V

    .line 256
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCurrentRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 257
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    .line 248
    :cond_2
    :goto_0
    iput v4, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceId:I

    .line 249
    aget p1, p1, v5

    iput p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceCount:I

    return-void

    .line 241
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 242
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->notifyEyeViewState(Z)V

    const/4 p1, -0x1

    .line 243
    iput p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceId:I

    .line 244
    iput p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceCount:I

    :goto_2
    return-void
.end method

.method private notifyEyeViewState(Z)V
    .locals 2

    .line 196
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mIsEyeViewShowing:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 197
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 198
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mIsEyeViewShowing:Z

    if-eqz p1, :cond_1

    const-string p0, "show_eye_view"

    goto :goto_1

    :cond_1
    const-string p0, "hide_eye_view"

    :goto_1
    const-string p1, "key_eye_view_state"

    .line 200
    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private updateRootLayoutRect()V
    .locals 5

    .line 230
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 232
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 233
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 235
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0077

    const/4 v1, 0x0

    .line 104
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090184

    .line 105
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    .line 106
    new-instance p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeBackground;

    invoke-direct {p0, p2}, Lcom/transsion/camera/ui/setting/eyedetection/EyeBackground;-><init>(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V

    invoke-virtual {p2, p0}, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;->setDrawBackground(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;)V

    return-object p1
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_eye_detection"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 155
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .locals 3

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCanShowEyeView:Z

    .line 123
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    .line 124
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 125
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->notifyEyeViewState(Z)V

    :cond_0
    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x9

    if-eq v1, p1, :cond_1

    const/4 v2, 0x5

    if-eq v2, p1, :cond_1

    const/4 v2, 0x7

    if-eq v2, p1, :cond_1

    const/4 v2, 0x3

    if-eq v2, p1, :cond_1

    if-eq v0, p1, :cond_1

    const/16 v2, 0x14

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x1b

    if-ne v2, p1, :cond_2

    .line 301
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->hideEntryView()V

    goto :goto_1

    .line 298
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->updateRootLayoutRect()V

    const/4 v2, -0x1

    .line 299
    iput v2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceId:I

    :cond_2
    :goto_1
    const/16 v2, 0xd

    if-ne v2, p1, :cond_3

    .line 304
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mIsCapturing:Z

    goto :goto_2

    :cond_3
    const/16 v0, 0xe

    if-eq v0, p1, :cond_4

    if-eq v1, p1, :cond_4

    const/16 v0, 0x63

    if-ne v0, p1, :cond_5

    :cond_4
    const/4 p1, 0x0

    .line 308
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mIsCapturing:Z

    :cond_5
    :goto_2
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 264
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 265
    iput p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mOrientation:I

    .line 266
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    if-eqz p0, :cond_0

    int-to-float p1, p1

    .line 267
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_0
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 181
    sget-object p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 184
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeResultCallbackImpl:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    const-string p1, "key_focus_state"

    .line 191
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->registerKeyToMonitor(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setupEntryView()V
    .locals 2

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCanShowEyeView:Z

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->notifyEyeViewState(Z)V

    :cond_0
    return-void
.end method

.method public showEntryView()V
    .locals 1

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCanShowEyeView:Z

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 161
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 167
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 168
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->notifyEyeViewState(Z)V

    :cond_1
    const/4 v0, -0x1

    .line 170
    iput v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceId:I

    .line 171
    iput v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceCount:I

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_2

    const-string v0, "key_focus_state"

    .line 173
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 137
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->updateRootLayoutRect()V

    return-void
.end method
