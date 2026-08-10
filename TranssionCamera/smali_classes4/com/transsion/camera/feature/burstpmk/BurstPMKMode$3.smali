.class Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$3;
.super Ljava/lang/Object;
.source "BurstPMKMode.java"

# interfaces
.implements Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$3;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDirectionChange(I)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$3;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$200(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$3;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$200(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->onDirectionChange(I)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$3;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$1800(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$3;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$1800(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->onDirectionChange(I)V

    :cond_1
    return-void
.end method
