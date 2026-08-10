.class final Lcom/transsion/camera/feature/arcore/common/widgets/AudioIconAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AudioIconAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/AudioIconAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewHolder"
.end annotation


# instance fields
.field public final mIcon:Landroid/widget/ImageView;

.field public final mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/AudioIconAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 29
    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/AudioIconAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    return-void
.end method
