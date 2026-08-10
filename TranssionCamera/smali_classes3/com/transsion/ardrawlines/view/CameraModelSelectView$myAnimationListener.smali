.class Lcom/transsion/ardrawlines/view/CameraModelSelectView$myAnimationListener;
.super Ljava/lang/Object;
.source "CameraModelSelectView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ardrawlines/view/CameraModelSelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "myAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/ardrawlines/view/CameraModelSelectView;


# direct methods
.method public static synthetic $r8$lambda$518h7AsMQSV0SsHBXKwtg4tXYSY(Lcom/transsion/ardrawlines/view/CameraModelSelectView$myAnimationListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/CameraModelSelectView$myAnimationListener;->lambda$onAnimationEnd$0()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/ardrawlines/view/CameraModelSelectView;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView$myAnimationListener;->this$0:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0()V
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView$myAnimationListener;->this$0:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-static {v0}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->-$$Nest$fgetAnimationRunningCount(Lcom/transsion/ardrawlines/view/CameraModelSelectView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->-$$Nest$fputAnimationRunningCount(Lcom/transsion/ardrawlines/view/CameraModelSelectView;I)V

    .line 319
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView$myAnimationListener;->this$0:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-static {v0}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->-$$Nest$fgetcurrentItemCopy(Lcom/transsion/ardrawlines/view/CameraModelSelectView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->-$$Nest$fputmCurrentItem(Lcom/transsion/ardrawlines/view/CameraModelSelectView;I)V

    .line 320
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView$myAnimationListener;->this$0:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    iget-boolean v1, v0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->scroolToRight:Z

    invoke-static {v0}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->-$$Nest$fgetcurrentItemCopy(Lcom/transsion/ardrawlines/view/CameraModelSelectView;)I

    move-result v0

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 321
    :goto_0
    iget-object v1, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView$myAnimationListener;->this$0:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-static {v1}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->-$$Nest$fgetcurrentItemCopy(Lcom/transsion/ardrawlines/view/CameraModelSelectView;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->startTraAnimation(II)V

    .line 322
    iget-object p0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView$myAnimationListener;->this$0:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-static {p0}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->-$$Nest$mupdateTextColor(Lcom/transsion/ardrawlines/view/CameraModelSelectView;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const/4 p1, 0x0

    move v0, p1

    .line 309
    :goto_0
    iget-object v1, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView$myAnimationListener;->this$0:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView$myAnimationListener;->this$0:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView$myAnimationListener;->this$0:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-static {v0}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->-$$Nest$mupdateTextWeight(Lcom/transsion/ardrawlines/view/CameraModelSelectView;)V

    .line 313
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView$myAnimationListener;->this$0:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->-$$Nest$fputmRequstLayout(Lcom/transsion/ardrawlines/view/CameraModelSelectView;Z)V

    .line 314
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView$myAnimationListener;->this$0:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 315
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView$myAnimationListener;->this$0:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-static {v0, p1}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->-$$Nest$fputmAnimationRunning(Lcom/transsion/ardrawlines/view/CameraModelSelectView;Z)V

    .line 316
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView$myAnimationListener;->this$0:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-static {p1}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->-$$Nest$fgetAnimationRunningCount(Lcom/transsion/ardrawlines/view/CameraModelSelectView;)I

    move-result p1

    if-lez p1, :cond_1

    .line 317
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView$myAnimationListener;->this$0:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    new-instance v0, Lcom/transsion/ardrawlines/view/CameraModelSelectView$myAnimationListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/ardrawlines/view/CameraModelSelectView$myAnimationListener$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/ardrawlines/view/CameraModelSelectView$myAnimationListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView$myAnimationListener;->this$0:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->-$$Nest$fputmAnimationRunning(Lcom/transsion/ardrawlines/view/CameraModelSelectView;Z)V

    return-void
.end method
