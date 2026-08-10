.class Lcom/transsion/ardrawlines/PlaybackActivity$4;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ardrawlines/PlaybackActivity;->showCancelDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/ardrawlines/PlaybackActivity;


# direct methods
.method constructor <init>(Lcom/transsion/ardrawlines/PlaybackActivity;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/transsion/ardrawlines/PlaybackActivity$4;->this$0:Lcom/transsion/ardrawlines/PlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 321
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
