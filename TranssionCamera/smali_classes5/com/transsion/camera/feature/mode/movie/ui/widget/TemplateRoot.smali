.class public Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;
.super Landroid/widget/FrameLayout;
.source "TemplateRoot.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mDownPoint:Landroid/graphics/PointF;

.field private mModePlusBottomBarHeight:I

.field private mRecycleViewInScroll:Z

.field private mTemplateUI:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

.field private final mTouchSlop:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;->mDownPoint:Landroid/graphics/PointF;

    .line 63
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;->mTouchSlop:F

    return-void
.end method

.method private hideModePanel()V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;->mTemplateUI:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    if-eqz p0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->hideModePanel()V

    :cond_0
    return-void
.end method

.method private isModePanelVisible()Z
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;->mTemplateUI:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->isModePanelVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;->mDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;->mDownPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_3

    .line 129
    iget v4, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;->mTouchSlop:F

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;->mRecycleViewInScroll:Z

    if-nez v0, :cond_3

    .line 130
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 122
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 143
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 144
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 145
    iget v4, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;->mModePlusBottomBarHeight:I

    sub-int/2addr v0, v4

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_4

    return v2

    .line 149
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;->isModePanelVisible()Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;->mDownPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;->mDownPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 110
    iget v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;->mTouchSlop:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_1

    .line 111
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;->hideModePanel()V

    :cond_1
    :goto_0
    return v1
.end method

.method public setModePlusBottomBarHeight(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;->mModePlusBottomBarHeight:I

    return-void
.end method

.method public setTemplateUI(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;->mTemplateUI:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    return-void
.end method

.method public updateRecycleViewScrollState(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;->mRecycleViewInScroll:Z

    return-void
.end method
