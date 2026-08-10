.class public abstract Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;
.super Landroid/widget/RelativeLayout;
.source "MoreDragBox.java"


# instance fields
.field protected final mInOutPathInterpolator:Landroid/view/animation/PathInterpolator;

.field protected mIsLinearMode:Z

.field protected mModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

.field protected mParentHeight:I

.field protected mParentViewPosX:I

.field protected mParentViewPosY:I

.field protected mParentWidth:I

.field protected mViewHeight:I

.field protected mViewPosX:F

.field protected mViewPosY:F

.field protected mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mInOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mIsLinearMode:Z

    .line 39
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->initView(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public abstract changeColor(JII)V
.end method

.method public changeGridToLinear()V
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->startIconGridToLinearAnimation()V

    .line 55
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->startNormalTextGridToLinearAnimation()V

    .line 56
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->startGridTextGridToLinearAnimation()V

    .line 57
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->startGridDescGridToLinearAnimation()V

    .line 58
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->startDragAreaGridToLinearAnimation()V

    return-void
.end method

.method public changeLinearToGrid()V
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->startIconLinearToGridAnimation()V

    .line 63
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->startNormalTextLinearToGridAnimation()V

    .line 64
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->startGridTextLinearToGridAnimation()V

    .line 65
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->startGridDescLinearToGridAnimation()V

    .line 66
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->startDragAreaLinearToGridAnimation()V

    return-void
.end method

.method public abstract changeScale(IFF)V
.end method

.method public abstract getDeltaHeight()I
.end method

.method public abstract getDeltaWidth()I
.end method

.method public abstract getDragBoxLayoutParams(Landroid/content/Context;)Landroid/widget/RelativeLayout$LayoutParams;
.end method

.method public getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    return-object p0
.end method

.method public abstract getMotionEventGetX(IILandroid/view/DragEvent;)F
.end method

.method public getScrollPositionInGridMode(Landroid/view/DragEvent;ILandroid/graphics/Rect;)Landroid/graphics/Point;
    .locals 2

    .line 82
    div-int/lit8 p2, p2, 0x2

    .line 83
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p0

    int-to-float v0, p2

    sub-float/2addr p0, v0

    iget v1, p3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    cmpg-float p0, p0, v1

    const/4 v1, 0x0

    if-gez p0, :cond_0

    .line 84
    new-instance p0, Landroid/graphics/Point;

    neg-int p1, p2

    invoke-direct {p0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p0

    add-float/2addr p0, v0

    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p1, p1, -0xa

    int-to-float p1, p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    .line 87
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 89
    :cond_1
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public abstract getScrollPositionInLinearMode(Landroid/view/DragEvent;ILandroid/graphics/Rect;)Landroid/graphics/Point;
.end method

.method public abstract getViewX()F
.end method

.method public abstract getViewY()F
.end method

.method public abstract initView(Landroid/content/Context;)V
.end method

.method public abstract initialize()V
.end method

.method public isGridMode()Z
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isLinearMode()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isLinearMode()Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mIsLinearMode:Z

    return p0
.end method

.method public abstract scaleX(F)V
.end method

.method public abstract setDragStartEvent(Landroid/view/DragEvent;)V
.end method

.method public setDraggingModeUIItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    return-void
.end method

.method public setDraggingViewParentPosition(II)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mParentViewPosX:I

    .line 102
    iput p2, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mParentViewPosY:I

    return-void
.end method

.method public setDraggingViewParentSize(II)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mParentWidth:I

    .line 107
    iput p2, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mParentHeight:I

    return-void
.end method

.method public setDraggingViewPosition(FF)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewPosX:F

    .line 112
    iput p2, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewPosY:F

    return-void
.end method

.method public setDraggingViewSize(II)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewWidth:I

    .line 117
    iput p2, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewHeight:I

    return-void
.end method

.method public setGridMode()V
    .locals 1

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mIsLinearMode:Z

    return-void
.end method

.method public setLinearMode()V
    .locals 1

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mIsLinearMode:Z

    return-void
.end method

.method public abstract startDragAreaGridToLinearAnimation()V
.end method

.method public abstract startDragAreaLinearToGridAnimation()V
.end method

.method public abstract startGridDescGridToLinearAnimation()V
.end method

.method public abstract startGridDescLinearToGridAnimation()V
.end method

.method public abstract startGridTextGridToLinearAnimation()V
.end method

.method public abstract startGridTextLinearToGridAnimation()V
.end method

.method public abstract startIconGridToLinearAnimation()V
.end method

.method public abstract startIconLinearToGridAnimation()V
.end method

.method public abstract startNormalTextGridToLinearAnimation()V
.end method

.method public abstract startNormalTextLinearToGridAnimation()V
.end method

.method public abstract translateDragBoxForDragLocationAction(FF)V
.end method

.method public abstract updateDragEvent(Landroid/view/DragEvent;)V
.end method
