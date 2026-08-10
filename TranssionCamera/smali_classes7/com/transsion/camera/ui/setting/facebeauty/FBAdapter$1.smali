.class Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$1;
.super Ljava/lang/Object;
.source "FBAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;->onBindViewHolder(Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;I)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$1;->this$0:Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;

    iput p2, p0, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$1;->this$0:Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;->access$000(Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;)I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$1;->val$position:I

    if-eq v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$1;->this$0:Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;->setSelectedItemByIndex(I)V

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$1;->this$0:Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;->access$100(Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;)Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$1;->this$0:Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;->access$100(Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;)Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$1;->this$0:Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;->access$200(Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$1;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/ui/setting/facebeauty/FaceItemData;

    iget p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$1;->val$position:I

    invoke-interface {v0, p1, v1, p0}, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$OnItemClickListener;->onItemSelected(Landroid/view/View;Lcom/transsion/camera/ui/setting/facebeauty/FaceItemData;I)V

    :cond_0
    return-void
.end method
