.class Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$SlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "FitCenterTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingTabStrip"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;Landroid/content/Context;)V
    .locals 0

    .line 1198
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$SlidingTabStrip;->this$0:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;

    .line 1199
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 1200
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method childrenNeedLayout()Z
    .locals 4

    .line 1204
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1205
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1206
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1215
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
