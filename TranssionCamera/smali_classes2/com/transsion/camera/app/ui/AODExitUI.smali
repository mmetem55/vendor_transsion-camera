.class public Lcom/transsion/camera/app/ui/AODExitUI;
.super Ljava/lang/Object;
.source "AODExitUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IAODExitUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;,
        Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDownInIndicator:Z

.field private final mDragGestureDetector:Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;

.field private final mDragHelper:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;

.field private mEnable:Z

.field private mExitIndicator:Lcom/transsion/camera/app/ui/widget/DragIndicator;

.field private mExitListener:Lcom/transsion/camera/app/common/IAppUIListener$IAODExitListener;

.field private mExitRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mExitTips:Landroid/widget/TextView;

.field private final mIndicatorLocation:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/AODExitUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/AODExitUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mIndicatorLocation:Landroid/graphics/Rect;

    .line 63
    new-instance v0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;-><init>(Lcom/transsion/camera/app/ui/AODExitUI;Landroid/content/Context;Lcom/transsion/camera/app/ui/AODExitUI$1;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mDragHelper:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;

    .line 64
    new-instance p1, Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;

    invoke-direct {p1, p0, v1}, Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;-><init>(Lcom/transsion/camera/app/ui/AODExitUI;Lcom/transsion/camera/app/ui/AODExitUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mDragGestureDetector:Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;

    return-void
.end method

.method static synthetic access$1000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 40
    sget-object v0, Lcom/transsion/camera/app/ui/AODExitUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/app/ui/AODExitUI;)Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mDragGestureDetector:Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/app/ui/AODExitUI;)Lcom/transsion/camera/app/ui/widget/DragIndicator;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mExitIndicator:Lcom/transsion/camera/app/ui/widget/DragIndicator;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/app/ui/AODExitUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mExitRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/transsion/camera/app/ui/AODExitUI;)Landroid/widget/TextView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mExitTips:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/transsion/camera/app/ui/AODExitUI;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AODExitUI;->notifyExit()V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/AODExitUI;)Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mDragHelper:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/ui/AODExitUI;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mEnable:Z

    return p0
.end method

.method private notifyExit()V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mExitListener:Lcom/transsion/camera/app/common/IAppUIListener$IAODExitListener;

    if-eqz p0, :cond_0

    .line 127
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$IAODExitListener;->onExit()V

    :cond_0
    return-void
.end method

.method private updateLayout(I)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mExitRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 85
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mExitRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 87
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_3

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_2

    const/16 v1, 0x10e

    if-eq p1, v1, :cond_1

    const/16 p1, 0x31

    .line 101
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x15

    .line 96
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_2
    const/16 p1, 0x51

    .line 93
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_3
    const/16 p1, 0x13

    .line 90
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 103
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mExitRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const v0, 0x7f0c0026

    .line 117
    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090068

    .line 118
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mExitRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const p1, 0x7f090069

    .line 119
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mExitTips:Landroid/widget/TextView;

    const p1, 0x7f090067

    .line 120
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/DragIndicator;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mExitIndicator:Lcom/transsion/camera/app/ui/widget/DragIndicator;

    .line 121
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mDragHelper:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->access$300(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AODExitUI;->updateLayout(I)V

    return-object p2
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mExitIndicator:Lcom/transsion/camera/app/ui/widget/DragIndicator;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mIndicatorLocation:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mIndicatorLocation:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 149
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mDownInIndicator:Z

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mExitIndicator:Lcom/transsion/camera/app/ui/widget/DragIndicator;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/DragIndicator;->setPressed(Z)V

    :cond_0
    return v0
.end method

.method public onDrag(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mDragGestureDetector:Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;->onDrag(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AODExitUI;->updateLayout(I)V

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mDragHelper:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->access$200(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSingleTapUp(FF)Z
    .locals 0

    .line 138
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mExitRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mExitRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 140
    sget-object p0, Lcom/transsion/camera/app/ui/AODExitUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onSingleTapUp, hide exit ui"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 163
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mDownInIndicator:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 164
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mDownInIndicator:Z

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mDragHelper:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->access$400(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mExitIndicator:Lcom/transsion/camera/app/ui/widget/DragIndicator;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/DragIndicator;->setPressed(Z)V

    .line 169
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mDragGestureDetector:Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;->onUp()Z

    move-result p0

    return p0
.end method

.method public pause()V
    .locals 2

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mDownInIndicator:Z

    .line 175
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mDragGestureDetector:Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;->cancel()V

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mExitIndicator:Lcom/transsion/camera/app/ui/widget/DragIndicator;

    if-eqz p0, :cond_0

    .line 177
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/DragIndicator;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 3

    .line 108
    sget-object v0, Lcom/transsion/camera/app/ui/AODExitUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnable enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 109
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mEnable:Z

    if-nez p1, :cond_0

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mDragGestureDetector:Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AODExitUI$DragGestureDetector;->cancel()V

    :cond_0
    return-void
.end method

.method public setExitListener(Lcom/transsion/camera/app/common/IAppUIListener$IAODExitListener;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODExitUI;->mExitListener:Lcom/transsion/camera/app/common/IAppUIListener$IAODExitListener;

    return-void
.end method

.method public unInit()V
    .locals 0

    return-void
.end method
