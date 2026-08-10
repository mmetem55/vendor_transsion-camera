.class Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/SeekBarCompatDontCrash$1;
.super Landroid/view/ViewOutlineProvider;
.source "SeekBarCompatDontCrash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/SeekBarCompatDontCrash;->setOutlineProvider(Landroid/view/View;Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$markerDrawable:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/SeekBarCompatDontCrash$1;->val$markerDrawable:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/SeekBarCompatDontCrash$1;->val$markerDrawable:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;->getPath()Landroid/graphics/Path;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    return-void
.end method
