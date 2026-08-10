.class Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$1;
.super Ljava/lang/Object;
.source "ProfessionalMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 624
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->access$100(Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "mCaptureStopListener click"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 625
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getPhysicalLastClickTime()[J

    move-result-object p1

    .line 626
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    aput-wide v0, p1, v2

    .line 627
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->access$200(Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;)Z

    return-void
.end method
