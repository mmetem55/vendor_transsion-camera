.class public Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;
.super Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;
.source "AutoFitCenterTabLayout.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentCenterIndex:I

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mIsAutoSelected:Z

.field private mIsScrolling:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 24
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->mIsScrolling:Z

    .line 20
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->mIsAutoSelected:Z

    .line 21
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->mCurrentCenterIndex:I

    .line 25
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p1, v0, p0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->mIsScrolling:Z

    .line 20
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->mIsAutoSelected:Z

    .line 21
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->mCurrentCenterIndex:I

    .line 30
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, p2, p0, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->mIsScrolling:Z

    .line 20
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->mIsAutoSelected:Z

    .line 21
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->mCurrentCenterIndex:I

    .line 35
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-direct {p1, p2, p0, p3, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private autoFitCenter()V
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->getCenterTagIndex()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->selectTabIndex(IZ)Z

    return-void
.end method

.method private getCenterTagIndex()I
    .locals 8

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    move v2, v0

    move v3, v2

    .line 85
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->getTabCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 87
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->getTabAt(I)Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 89
    :cond_0
    invoke-virtual {v6}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->getView()Landroid/view/View;

    move-result-object v6

    .line 90
    invoke-virtual {v6}, Landroid/view/View;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    .line 91
    :cond_1
    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationInWindow([I)V

    aget v5, v5, v0

    .line 92
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/2addr v6, v4

    add-int/2addr v5, v6

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->getScreenCenter()I

    move-result v4

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-gt v4, v1, :cond_2

    move v3, v2

    move v1, v4

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method private getScreenCenter()I
    .locals 5

    .line 71
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 72
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "override_mode_screen_size"

    const-string v4, "string"

    .line 71
    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    .line 75
    sget-object v0, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "override mode screen size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    return p0

    .line 78
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 40
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    const/high16 v3, 0x43160000    # 150.0f

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_1

    .line 41
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getLayoutDirection()I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    add-int/lit16 v3, v3, -0x96

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 42
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->mIsScrolling:Z

    if-nez v0, :cond_3

    return v1

    .line 45
    :cond_3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_4

    return v2

    .line 49
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_5

    .line 50
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 52
    :cond_5
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v2, :cond_6

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->mIsScrolling:Z

    if-eqz v0, :cond_6

    .line 53
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->mIsScrolling:Z

    .line 54
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->autoFitCenter()V

    return v2

    .line 59
    :cond_6
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 61
    sget-object p1, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTouchEvent exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 124
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 p2, 0x1

    const/4 p4, 0x0

    if-le p1, p2, :cond_0

    return p4

    .line 127
    :cond_0
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->mIsScrolling:Z

    float-to-int p1, p3

    .line 128
    invoke-virtual {p0, p1, p4}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 129
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->getCenterTagIndex()I

    move-result p1

    .line 130
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->mCurrentCenterIndex:I

    if-eq p2, p1, :cond_1

    .line 131
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->mCurrentCenterIndex:I

    .line 132
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->updateAlpha()V

    :cond_1
    return p4
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setAutoSelected(Z)V
    .locals 0

    .line 160
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->mIsAutoSelected:Z

    .line 161
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mSelectedTab:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->getPosition()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->mCurrentCenterIndex:I

    .line 162
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->updateAlpha()V

    return-void
.end method

.method public updateAlpha()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 143
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->getTabCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 144
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->getTabAt(I)Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 146
    :cond_0
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;

    .line 147
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 148
    :cond_1
    iget v4, p0, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->mCurrentCenterIndex:I

    if-ne v1, v4, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    .line 149
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 150
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->mIsAutoSelected:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->setSelected(Z)V

    .line 151
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->syncTabValue(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;)V

    goto :goto_1

    :cond_2
    const v2, 0x3f19999a    # 0.6f

    .line 153
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 154
    invoke-virtual {v3, v0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->setSelected(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
