.class public Lcom/transsion/camera/app/ui/widget/GridRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "GridRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;
    }
.end annotation


# instance fields
.field private mOrientation:I

.field private mSpanCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/GridRecyclerView;->mOrientation:I

    const/4 v1, 0x2

    .line 32
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/GridRecyclerView;->mSpanCount:I

    if-eqz p2, :cond_0

    .line 48
    sget-object v1, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->GridRecyclerView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 49
    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->GridRecyclerView_orientation:I

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/GridRecyclerView;->mOrientation:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/camera/app/ui/widget/GridRecyclerView;->mOrientation:I

    .line 50
    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->GridRecyclerView_spanCount:I

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/GridRecyclerView;->mSpanCount:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/camera/app/ui/widget/GridRecyclerView;->mSpanCount:I

    .line 51
    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->GridRecyclerView_useOSOverScroll:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 52
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_0
    move p3, v0

    .line 54
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/GridRecyclerView;->mSpanCount:I

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/GridRecyclerView;->mOrientation:I

    invoke-direct {p2, p1, v1, v2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    if-eqz p3, :cond_2

    .line 57
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/GridRecyclerView;->mOrientation:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 58
    invoke-static {p0, v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    goto :goto_1

    .line 60
    :cond_1
    invoke-static {p0, p2}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    :cond_2
    :goto_1
    return-void
.end method
