.class public Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView;
.super Lcom/transsion/camera/app/ui/widget/RotateImageView;
.source "ShutterBarView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView$OnShutterButtonListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mListener:Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView$OnShutterButtonListener;

.field private mOldPressed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ShutterBarView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView;->mListener:Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView$OnShutterButtonListener;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 20
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView$OnShutterButtonListener;->onShutterClick(Z)V

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView;->mListener:Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView$OnShutterButtonListener;

    if-eqz p0, :cond_0

    .line 27
    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView$OnShutterButtonListener;->onShutterLongClick()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 75
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView;->mListener:Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView$OnShutterButtonListener;

    if-eqz p0, :cond_2

    .line 80
    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView$OnShutterButtonListener;->onShutterUp()V

    goto :goto_0

    .line 84
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView;->mListener:Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView$OnShutterButtonListener;

    if-eqz p0, :cond_2

    .line 85
    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView$OnShutterButtonListener;->onShutterDown()V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public setOnShutterListener(Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView$OnShutterButtonListener;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView;->mListener:Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView$OnShutterButtonListener;

    return-void
.end method
