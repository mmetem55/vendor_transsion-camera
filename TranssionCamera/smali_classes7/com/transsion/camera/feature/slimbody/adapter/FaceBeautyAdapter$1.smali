.class Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$1;
.super Ljava/lang/Object;
.source "FaceBeautyAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;I)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$1;->this$0:Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;

    iput p2, p0, Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$1;->this$0:Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;->access$000(Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;)I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$1;->val$position:I

    if-eq v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$1;->this$0:Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;->setSelectedItemByIndex(I)V

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$1;->this$0:Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;->access$100(Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;)Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$1;->this$0:Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;->access$100(Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;)Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$1;->this$0:Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;

    invoke-static {v1}, Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;->access$200(Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$1;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/slimbody/data/FBItemData;

    iget p0, p0, Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$1;->val$position:I

    invoke-interface {v0, p1, v1, p0}, Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$OnItemClickListener;->onItemSelected(Landroid/view/View;Lcom/transsion/camera/feature/slimbody/data/FBItemData;I)V

    :cond_0
    return-void
.end method
