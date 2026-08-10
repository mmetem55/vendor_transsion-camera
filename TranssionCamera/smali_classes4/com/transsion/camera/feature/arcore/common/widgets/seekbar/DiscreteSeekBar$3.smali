.class Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$3;
.super Ljava/lang/Object;
.source "DiscreteSeekBar.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;)V
    .locals 0

    .line 1049
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$3;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosingComplete()V
    .locals 0

    .line 1052
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$3;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->access$200(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;)Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->animateToNormal()V

    return-void
.end method

.method public onOpeningComplete()V
    .locals 0

    return-void
.end method
