.class Lcom/transsion/camera/ui/setting/CodeResultActivity$1;
.super Ljava/lang/Object;
.source "CodeResultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/CodeResultActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/CodeResultActivity;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/CodeResultActivity;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/CodeResultActivity$1;->this$0:Lcom/transsion/camera/ui/setting/CodeResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/CodeResultActivity$1;->this$0:Lcom/transsion/camera/ui/setting/CodeResultActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
