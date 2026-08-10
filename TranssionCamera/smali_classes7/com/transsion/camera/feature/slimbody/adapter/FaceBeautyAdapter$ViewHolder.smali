.class public Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FaceBeautyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public icon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 30
    sget v0, Lcom/transsion/camera/feature/slimbody/R$id;->item_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    return-void
.end method
