.class Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$2;
.super Ljava/lang/Object;
.source "BurstPMKUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->doCreateView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$2;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 153
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$2;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->access$400(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$2;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->access$500(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)V

    :cond_0
    return-void
.end method
