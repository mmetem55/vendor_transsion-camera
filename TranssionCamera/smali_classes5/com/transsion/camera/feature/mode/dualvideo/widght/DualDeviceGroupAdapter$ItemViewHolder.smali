.class public Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DualDeviceGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ItemViewHolder"
.end annotation


# instance fields
.field public final itemLayout:Landroid/widget/FrameLayout;

.field public final ivItem:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field public final ivItemSign:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;Landroid/view/View;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;

    .line 30
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 31
    sget p1, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_item_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;->itemLayout:Landroid/widget/FrameLayout;

    .line 32
    sget p1, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_device_item:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;->ivItem:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 33
    sget p1, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_device_chosen_sign:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;->ivItemSign:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-void
.end method
