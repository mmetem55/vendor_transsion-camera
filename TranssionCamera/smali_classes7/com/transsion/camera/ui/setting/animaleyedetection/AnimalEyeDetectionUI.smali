.class public Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "AnimalEyeDetectionUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$StatusChangeListener;,
        Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$EyeResultCallbackImpl;,
        Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$UIHandler;
    }
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "key_animal_eye_detection"

.field private static final MSG_HIDE_EYE:I = 0x66

.field private static final MSG_SHOW_EYE:I = 0x65

.field private static final MSG_UPDATE_EYE:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mActiveEyeView:Z

.field private mAnimalView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

.field private mCanShowEyeView:Z

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mEyeResultCallbackImpl:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$EyeResultCallbackImpl;

.field private mFaceCount:I

.field private mFaceId:I

.field private mIsCapturing:Z

.field private mIsEyeViewShowing:Z

.field private mOrientation:I

.field private mPreviewViewRect:Landroid/graphics/Rect;

.field private mResources:Landroid/content/res/Resources;

.field private mStatusChangeListener:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$UIHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AnimalEyeDetUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mActiveEyeView:Z

    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceId:I

    .line 61
    iput v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceCount:I

    .line 63
    new-instance v0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$EyeResultCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$EyeResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$1;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mEyeResultCallbackImpl:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$EyeResultCallbackImpl;

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 68
    new-instance v0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$StatusChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$1;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$StatusChangeListener;

    .line 73
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mResources:Landroid/content/res/Resources;

    .line 74
    new-instance p1, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$UIHandler;

    invoke-direct {p1, p0, v1}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$UIHandler;

    return-void
.end method

.method static synthetic access$300()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 48
    sget-object v0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;[I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->doUpdateEyeView([I)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;)Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$UIHandler;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$UIHandler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mIsCapturing:Z

    return p0
.end method

.method static synthetic access$702(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mActiveEyeView:Z

    return p1
.end method

.method static synthetic access$802(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceId:I

    return p1
.end method

.method private changeRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 8

    .line 286
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 290
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int v3, v1, v2

    .line 291
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int v5, v4, p1

    const v6, 0x3ecccccd    # 0.4f

    if-le v3, v5, :cond_1

    int-to-float v2, v2

    int-to-float v7, v3

    mul-float/2addr v7, v6

    sub-float/2addr v2, v7

    float-to-int v2, v2

    .line 294
    iput v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    .line 295
    div-int/lit8 v3, v3, 0x2

    sub-int/2addr p1, v3

    int-to-float p1, p1

    sub-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    int-to-float p1, v1

    add-float/2addr p1, v7

    float-to-int p1, p1

    .line 296
    iput p1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    int-to-float p1, v4

    add-float/2addr p1, v7

    float-to-int p1, p1

    .line 297
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    sub-int v3, v5, v3

    .line 299
    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v5, v5

    mul-float/2addr v5, v6

    sub-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    sub-float/2addr p1, v5

    float-to-int p1, p1

    .line 300
    iput p1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    int-to-float p1, v1

    add-float/2addr p1, v5

    float-to-int p1, p1

    .line 301
    iput p1, v0, Landroid/graphics/Rect;->right:I

    int-to-float p1, v4

    add-float/2addr p1, v5

    float-to-int p1, p1

    .line 302
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 304
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mResources:Landroid/content/res/Resources;

    const p1, 0x7f07005b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 305
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int v2, p1, v1

    if-ge v2, p0, :cond_2

    sub-int/2addr p0, v2

    .line 308
    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 309
    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p0

    .line 310
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 311
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_2
    return-object v0
.end method

.method private doUpdateEyeView([I)V
    .locals 7

    .line 254
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mActiveEyeView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mCanShowEyeView:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 260
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

    .line 261
    iget v2, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceId:I

    const/4 v4, 0x4

    aget v4, p1, v4

    const/4 v5, 0x5

    if-ne v2, v4, :cond_2

    iget v2, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceCount:I

    aget v6, p1, v5

    if-eq v2, v6, :cond_1

    goto :goto_0

    .line 266
    :cond_1
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->notifyEyeViewState(Z)V

    .line 267
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 268
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 267
    invoke-static {v0, p1, v2}, Lcom/transsion/camera/utils/CoordinatesUtil;->referenceToViewSpace(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object p1

    .line 269
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->changeRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mAnimalView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, p1}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 271
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mAnimalView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mAnimalView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    .line 262
    :cond_2
    :goto_0
    iput v4, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceId:I

    .line 263
    aget p1, p1, v5

    iput p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceCount:I

    return-void

    .line 255
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mAnimalView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 256
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->notifyEyeViewState(Z)V

    const/4 p1, -0x1

    .line 257
    iput p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceId:I

    .line 258
    iput p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceCount:I

    :goto_2
    return-void
.end method

.method private notifyEyeViewState(Z)V
    .locals 2

    .line 207
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mIsEyeViewShowing:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 208
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 209
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mIsEyeViewShowing:Z

    if-eqz p1, :cond_1

    const-string p0, "show_animal_eye_view"

    goto :goto_1

    :cond_1
    const-string p0, "hide_animal_eye_view"

    :goto_1
    const-string p1, "key_animal_eye_view_state"

    .line 211
    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private updateRootLayoutRect()V
    .locals 5

    .line 242
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 244
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 245
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 246
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 247
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0023

    const/4 v1, 0x0

    .line 110
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09005e

    .line 111
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mAnimalView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    .line 112
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

    const-string p0, "key_animal_eye_detection"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 166
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .locals 3

    .line 128
    sget-object v0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[hideEntryView]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mCanShowEyeView:Z

    .line 130
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mAnimalView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    .line 131
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->notifyEyeViewState(Z)V

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

    .line 327
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->hideEntryView()V

    goto :goto_1

    .line 324
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->updateRootLayoutRect()V

    const/4 v2, -0x1

    .line 325
    iput v2, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceId:I

    :cond_2
    :goto_1
    const/16 v2, 0xd

    if-ne v2, p1, :cond_3

    .line 330
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mIsCapturing:Z

    goto :goto_2

    :cond_3
    const/16 v0, 0xe

    if-eq v0, p1, :cond_4

    if-eq v1, p1, :cond_4

    const/16 v0, 0x63

    if-ne v0, p1, :cond_5

    :cond_4
    const/4 p1, 0x0

    .line 334
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mIsCapturing:Z

    :cond_5
    :goto_2
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 278
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 279
    iput p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mOrientation:I

    .line 280
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mAnimalView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    if-eqz p0, :cond_0

    int-to-float p1, p1

    .line 281
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_0
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 192
    sget-object p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 195
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mEyeResultCallbackImpl:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$EyeResultCallbackImpl;

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

    .line 200
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    const-string p1, "key_focus_state"

    .line 202
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->registerKeyToMonitor(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setupEntryView()V
    .locals 2

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mCanShowEyeView:Z

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mAnimalView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->notifyEyeViewState(Z)V

    :cond_0
    return-void
.end method

.method public showEntryView()V
    .locals 2

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mCanShowEyeView:Z

    .line 138
    sget-object v0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[showEntryView]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mAnimalView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 2

    .line 172
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$UIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mAnimalView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 178
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 179
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->notifyEyeViewState(Z)V

    :cond_1
    const/4 v0, -0x1

    .line 181
    iput v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceId:I

    .line 182
    iput v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mFaceCount:I

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_2

    const-string v0, "key_focus_state"

    .line 184
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 148
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->updateRootLayoutRect()V

    return-void
.end method
