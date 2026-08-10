.class Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$2;
.super Ljava/lang/Object;
.source "SkyItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;I)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$2;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    iput p2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 90
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$2;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->access$000(Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$2;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    iget p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$2;->val$position:I

    invoke-static {p1, p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->access$100(Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;I)V

    return-void
.end method
