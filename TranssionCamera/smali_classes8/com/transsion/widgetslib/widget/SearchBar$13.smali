.class Lcom/transsion/widgetslib/widget/SearchBar$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchBar.java"


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

    .line 576
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$13;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 584
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$13;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$900(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/ImageView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
