.class Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable$1;
.super Ljava/lang/Object;
.source "ThumbDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->access$002(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;Z)Z

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->access$102(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;Z)Z

    return-void
.end method
