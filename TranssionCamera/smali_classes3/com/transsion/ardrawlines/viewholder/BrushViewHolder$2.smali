.class Lcom/transsion/ardrawlines/viewholder/BrushViewHolder$2;
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

    .line 292
    iput-object p1, p0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder$2;->this$0:Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 295
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
