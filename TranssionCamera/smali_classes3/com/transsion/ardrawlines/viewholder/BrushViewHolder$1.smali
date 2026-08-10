.class Lcom/transsion/ardrawlines/viewholder/BrushViewHolder$1;
.super Ljava/lang/Object;
.source "BrushViewHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->clearLines()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;


# direct methods
.method constructor <init>(Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder$1;->this$0:Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p0, "AR Session Origin"

    const-string p2, "ClearLines"

    const-string v0, ""

    .line 301
    invoke-static {p0, p2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
