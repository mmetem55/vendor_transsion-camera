.class public Lcom/transsion/camera/ar/manager/VoiceEffectAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "VoiceEffectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ar/manager/VoiceEffectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public final icon:Landroid/widget/ImageView;

.field public final text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 72
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 73
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/ar/manager/VoiceEffectAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 74
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/ar/manager/VoiceEffectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    return-void
.end method
