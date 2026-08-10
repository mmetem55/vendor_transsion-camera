.class Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$1;
.super Ljava/lang/Object;
.source "DiscreteSeekBar.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->animateSetProgress(I)V
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

    .line 893
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFrame(F)V
    .locals 0

    .line 896
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;->setAnimationPosition(F)V

    return-void
.end method
