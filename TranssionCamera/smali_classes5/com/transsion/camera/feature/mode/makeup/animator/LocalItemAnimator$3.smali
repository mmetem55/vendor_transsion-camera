.class Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$3;
.super Ljava/lang/Object;
.source "LocalItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator;

.field final synthetic val$additions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$3;->this$0:Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 170
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$3;->this$0:Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator;->animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$3;->this$0:Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
