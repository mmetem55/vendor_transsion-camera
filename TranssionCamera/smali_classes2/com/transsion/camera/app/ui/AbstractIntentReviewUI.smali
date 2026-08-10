.class public abstract Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;
.super Ljava/lang/Object;
.source "AbstractIntentReviewUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IIntentReviewUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mActionCallback:Lcom/transsion/camera/app/ui/IIntentReviewUI$IActionCallback;

.field private mActionCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mActionConfirmView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mActionsPanel:Landroid/view/View;

.field private mIntentRootView:Landroid/view/ViewGroup;

.field private mIsReviewShown:Z

.field private mNavigationBarHeight:I

.field private mParent:Landroid/view/ViewGroup;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mReviewImageView:Landroid/widget/ImageView;

.field private final mUIHandler:Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "IntentReviewUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIsReviewShown:Z

    .line 40
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mNavigationBarHeight:I

    .line 50
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$1;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 31
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->doShowReviewView(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->doHideReviewView()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->doUpdateReviewViewState(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;)Lcom/transsion/camera/app/ui/IIntentReviewUI$IActionCallback;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionCallback:Lcom/transsion/camera/app/ui/IIntentReviewUI$IActionCallback;

    return-object p0
.end method

.method private doHideReviewView()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionConfirmView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIntentRootView:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private doShowReviewView(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 178
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->setupActions()V

    .line 179
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->updateLayoutForNavigationBar()V

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mPreviewRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mReviewImageView:Landroid/widget/ImageView;

    .line 182
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 183
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mPreviewRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v3, v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 184
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 185
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 186
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 189
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIntentRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private doUpdateReviewViewState(Z)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIntentRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionConfirmView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 231
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method private setupActions()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$1;-><init>(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionConfirmView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$2;-><init>(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateLayoutForNavigationBar()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionsPanel:Landroid/view/View;

    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mNavigationBarHeight:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public getReviewViewSize()Landroid/util/Size;
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mReviewImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 114
    :cond_0
    new-instance p0, Landroid/util/Size;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method public hideReviewView()Z
    .locals 2

    .line 156
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIsReviewShown:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 157
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIsReviewShown:Z

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public init(Landroid/view/ViewGroup;Lcom/transsion/camera/app/ui/IIntentReviewUI$IActionCallback;)V
    .locals 2

    .line 55
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionCallback:Lcom/transsion/camera/app/ui/IIntentReviewUI$IActionCallback;

    .line 56
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mParent:Landroid/view/ViewGroup;

    .line 57
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00cd

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIntentRootView:Landroid/view/ViewGroup;

    const/4 v0, 0x4

    .line 59
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 60
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIntentRootView:Landroid/view/ViewGroup;

    const v0, 0x7f09023a

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mReviewImageView:Landroid/widget/ImageView;

    .line 61
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIntentRootView:Landroid/view/ViewGroup;

    const v0, 0x7f090239

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionsPanel:Landroid/view/View;

    .line 62
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIntentRootView:Landroid/view/ViewGroup;

    const v0, 0x7f090238

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 63
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIntentRootView:Landroid/view/ViewGroup;

    const v0, 0x7f090132

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionConfirmView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIntentRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIsReviewShown:Z

    return p0
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mPreviewRect:Landroid/graphics/Rect;

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionConfirmView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 80
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_1

    .line 81
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_1
    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public setNavigationBarHeight(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mNavigationBarHeight:I

    return-void
.end method

.method public showReviewView(Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIsReviewShown:Z

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->hideReviewView()Z

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIntentRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mParent:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIntentRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public updateReviewViewState(Z)V
    .locals 1

    .line 225
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v0, 0x66

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
