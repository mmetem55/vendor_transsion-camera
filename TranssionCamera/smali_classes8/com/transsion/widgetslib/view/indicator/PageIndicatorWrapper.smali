.class public Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;
.super Landroid/widget/FrameLayout;
.source "PageIndicatorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper$OnMarkerClickListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_PADDING:I = 0x28

.field private static final INDICATOR_DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "PageIndicatorWrapper#"


# instance fields
.field private mCurrPage:I

.field private mHasSearch:Z

.field private mIsSearchVisible:Z

.field private mIsSpringPageIndicator:Z

.field private mMaxMarkerNum:I

.field private mSpringPageIndicator:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mCurrPage:I

    .line 19
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mMaxMarkerNum:I

    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mIsSearchVisible:Z

    .line 23
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mHasSearch:Z

    const/4 v2, 0x1

    .line 42
    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mIsSpringPageIndicator:Z

    .line 43
    sget-object v2, Lcom/transsion/widgetslib/R$styleable;->PageIndicatorWrapper:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 44
    sget v1, Lcom/transsion/widgetslib/R$styleable;->PageIndicatorWrapper_maxMarkerNum:I

    const/16 v2, 0x9

    invoke-virtual {p3, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mMaxMarkerNum:I

    .line 45
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x28

    .line 47
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 48
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v0, 0x11

    .line 49
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 50
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mIsSpringPageIndicator:Z

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    invoke-direct {v0, p1, p2}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mSpringPageIndicator:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object p1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mSpringPageIndicator:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    iget p2, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mMaxMarkerNum:I

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->setMaxMarkerNum(I)V

    .line 54
    iget-object p1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mSpringPageIndicator:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 56
    :cond_0
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public addMarker()V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mSpringPageIndicator:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->addMarker()V

    return-void
.end method

.method public addMarkers(IZ)V
    .locals 1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mSpringPageIndicator:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->addMarker()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isSpringPageIndicator()Z
    .locals 0

    .line 114
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mIsSpringPageIndicator:Z

    return p0
.end method

.method public onCreateMinusOne(ZI)V
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->setSearchVisible(Z)V

    .line 65
    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->setActiveMarker(I)V

    const/4 p1, 0x0

    .line 66
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->updateProgress(F)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public removeAllMarkers(Z)V
    .locals 0

    .line 85
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mIsSpringPageIndicator:Z

    if-eqz p1, :cond_0

    .line 86
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mSpringPageIndicator:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->removeAllMarkers()V

    :cond_0
    return-void
.end method

.method public removeMarker(IZ)V
    .locals 0

    .line 76
    iget-boolean p2, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mIsSpringPageIndicator:Z

    if-eqz p2, :cond_1

    .line 77
    iget-boolean p2, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mHasSearch:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mIsSearchVisible:Z

    if-eqz p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 80
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mSpringPageIndicator:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->removeMarker(I)V

    :cond_1
    return-void
.end method

.method public setActiveMarker(I)V
    .locals 2

    .line 91
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mIsSpringPageIndicator:Z

    if-eqz v0, :cond_2

    .line 92
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mHasSearch:Z

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mSpringPageIndicator:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mIsSearchVisible:Z

    if-eqz v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->setCurrentMarker(I)V

    goto :goto_1

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mSpringPageIndicator:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->setCurrentMarker(I)V

    .line 98
    :cond_2
    :goto_1
    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mCurrPage:I

    return-void
.end method

.method public setPageIndicatorMarkerClickListener(Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper$OnMarkerClickListener;)V
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mIsSpringPageIndicator:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mSpringPageIndicator:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->setMarkerClickListener(Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper$OnMarkerClickListener;)V

    :cond_0
    return-void
.end method

.method public setSearchVisible(Z)V
    .locals 2

    .line 124
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mHasSearch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 125
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mIsSearchVisible:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 127
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mIsSearchVisible:Z

    if-eqz p1, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->addMarker()V

    .line 130
    iget p1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mCurrPage:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->setActiveMarker(I)V

    goto :goto_1

    .line 132
    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->removeMarker(IZ)V

    .line 135
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_2

    .line 137
    :cond_3
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mIsSearchVisible:Z

    :goto_2
    return-void
.end method

.method public updateProgress(F)V
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mIsSpringPageIndicator:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mSpringPageIndicator:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->update(F)V

    :cond_0
    return-void
.end method
