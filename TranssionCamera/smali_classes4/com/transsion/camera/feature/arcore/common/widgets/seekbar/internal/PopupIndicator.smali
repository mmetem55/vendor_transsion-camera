.class public Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;
.super Ljava/lang/Object;
.source "PopupIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;
    }
.end annotation


# instance fields
.field private mDrawingLocation:[I

.field private mListener:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

.field private mPopupView:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;

.field private mShowing:Z

.field private final mWindowManager:Landroid/view/WindowManager;

.field screenSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;II)V
    .locals 9

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 45
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->mDrawingLocation:[I

    .line 46
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->screenSize:Landroid/graphics/Point;

    const-string v0, "window"

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->mWindowManager:Landroid/view/WindowManager;

    .line 50
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;II)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->mPopupView:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;)Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->mListener:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    return-object p0
.end method

.method private computeFlags(I)I
    .locals 0

    const p0, -0x68219

    and-int/2addr p0, p1

    const p1, 0x8000

    or-int/2addr p0, p1

    or-int/lit8 p0, p0, 0x8

    or-int/lit8 p0, p0, 0x10

    or-int/lit16 p0, p0, 0x200

    return p0
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 157
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const v1, 0x800033

    .line 158
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    .line 159
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 160
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, -0x3

    .line 161
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 162
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x3e8

    .line 163
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 164
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 p1, 0x3

    .line 165
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiscreteSeekBar Indicator:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->mPopupView:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->mPopupView:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;->access$000(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;)Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->animateOpen()V

    return-void
.end method

.method private measureFloater()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->screenSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->screenSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->mPopupView:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->measure(II)V

    return-void
.end method

.method private translateViewIntoPosition(I)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->mPopupView:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->mDrawingLocation:[I

    const/4 v1, 0x0

    aget p0, p0, v1

    add-int/2addr p1, p0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;->setFloatOffset(I)V

    return-void
.end method

.method private updateLayoutParamsForPosiion(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;I)V
    .locals 3

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->screenSize:Landroid/graphics/Point;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    .line 137
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->measureFloater()V

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->mPopupView:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 139
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->mPopupView:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;->access$000(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;)Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    .line 140
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->mDrawingLocation:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 p1, 0x0

    .line 141
    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 142
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->mDrawingLocation:[I

    const/4 v2, 0x1

    aget p1, p1, v2

    sub-int/2addr p1, v0

    add-int/2addr p1, p3

    add-int/2addr p1, v1

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->screenSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 144
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->mPopupView:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;->access$000(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;)Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->animateClose()V

    return-void
.end method

.method public dismissComplete()V
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->mShowing:Z

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->mPopupView:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->mShowing:Z

    return p0
.end method

.method public move(I)V
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->translateViewIntoPosition(I)V

    return-void
.end method

.method public setColors(II)V
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->mPopupView:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;->setColors(II)V

    return-void
.end method

.method public setListener(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->mListener:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    return-void
.end method

.method public setValue(Ljava/lang/CharSequence;)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->mPopupView:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;->access$000(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;)Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->setValue(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showIndicator(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->mPopupView:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;->access$000(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;)Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->animateOpen()V

    return-void

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x800033

    .line 92
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 93
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->updateLayoutParamsForPosiion(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;I)V

    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->mShowing:Z

    .line 96
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->translateViewIntoPosition(I)V

    .line 97
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public updateSizes(Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->dismissComplete()V

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator;->mPopupView:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;

    if-eqz p0, :cond_0

    .line 56
    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;->access$000(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/PopupIndicator$Floater;)Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/Marker;->resetSizes(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
