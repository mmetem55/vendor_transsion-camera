.class Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$3;
.super Ljava/lang/Object;
.source "OverBoundNestedScrollView.java"

# interfaces
.implements Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setUpOverScroll(Lcom/google/android/material/appbar/AppBarLayout;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

.field final synthetic val$appBarHeight:I

.field final synthetic val$appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field final synthetic val$appBarLayoutParams:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;Landroid/view/ViewGroup$LayoutParams;ILcom/google/android/material/appbar/AppBarLayout;)V
    .locals 0

    .line 2278
    iput-object p1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$3;->this$0:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    iput-object p2, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$3;->val$appBarLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iput p3, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$3;->val$appBarHeight:I

    iput-object p4, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$3;->val$appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOverScrollUpdated(F)V
    .locals 2

    const/4 v0, 0x0

    .line 2281
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2282
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$3;->val$appBarLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$3;->val$appBarHeight:I

    float-to-int p1, p1

    add-int/2addr v1, p1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2283
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$3;->val$appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
