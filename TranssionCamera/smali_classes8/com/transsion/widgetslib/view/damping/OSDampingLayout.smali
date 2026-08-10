.class public Lcom/transsion/widgetslib/view/damping/OSDampingLayout;
.super Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;
.source "OSDampingLayout.java"

# interfaces
.implements Lcom/transsion/widgetslib/view/damping/OSRefreshLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/damping/OSDampingLayout$OnRefreshListener;
    }
.end annotation


# instance fields
.field private mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSDampingLayout;->initHeaderHelper()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSDampingLayout;->initHeaderHelper()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSDampingLayout;->initHeaderHelper()V

    return-void
.end method


# virtual methods
.method public abortRefreshing()V
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSDampingLayout;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->abortRefreshing()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSDampingLayout;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 107
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getHeaderHelper()Lcom/transsion/widgetslib/view/damping/HeaderHelper;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSDampingLayout;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    return-object p0
.end method

.method public getLoadingView()Lcom/transsion/widgetslib/view/OSLoadingView;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSDampingLayout;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->getLoadingView()Lcom/transsion/widgetslib/view/OSLoadingView;

    move-result-object p0

    return-object p0
.end method

.method public initHeaderHelper()V
    .locals 2

    .line 35
    new-instance v0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSDampingLayout;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    return-void
.end method

.method public isRefreshing()Z
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSDampingLayout;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->isRefreshing()Z

    move-result p0

    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 112
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 113
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSDampingLayout;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->onDetachedFromWindow()V

    return-void
.end method

.method public onFinishHeaderInflate(Landroid/view/View;)V
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSDampingLayout;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->onFinishHeaderInflate(Landroid/view/View;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 80
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 81
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 86
    invoke-virtual {v2, v0}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 87
    invoke-virtual {v2, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 89
    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setFillViewport(Z)V

    .line 91
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 92
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 94
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$layout;->os_damping_layout_title2:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 95
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 97
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v1, -0x1

    .line 98
    invoke-virtual {v4, v2, v1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 99
    invoke-virtual {p0, v4, v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    invoke-virtual {p0, v3}, Lcom/transsion/widgetslib/view/damping/OSDampingLayout;->onFinishHeaderInflate(Landroid/view/View;)V

    return-void
.end method

.method public onOverScrollUpdated(F)V
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSDampingLayout;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->onOverScrollUpdated(F)V

    return-void
.end method

.method public setOnRefreshListener(Lcom/transsion/widgetslib/view/damping/OSDampingLayout$OnRefreshListener;)V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSDampingLayout;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->setOnRefreshListener(Lcom/transsion/widgetslib/view/damping/OSDampingLayout$OnRefreshListener;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSDampingLayout;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->setTextColor(I)V

    return-void
.end method
