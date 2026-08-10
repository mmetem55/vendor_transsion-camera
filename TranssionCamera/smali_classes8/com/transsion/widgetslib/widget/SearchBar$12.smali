.class Lcom/transsion/widgetslib/widget/SearchBar$12;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/SearchBar;->backExitAnimForTransition(FF)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/SearchBar;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/SearchBar;)V
    .locals 0

    .line 559
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$12;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 562
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 563
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$12;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$900(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method
