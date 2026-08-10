.class Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$2;
.super Ljava/lang/Object;
.source "SlimBodyRoot.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/listener/RvListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/feature/mode/makeup/listener/RvListener<",
        "Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickSelectedItem(Landroid/view/View;Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;I)V
    .locals 0

    if-eqz p2, :cond_1

    .line 206
    iget p1, p2, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;->featureId:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 207
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->access$200(Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;)Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->access$200(Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;)Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->getFeatureId()I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->access$300(Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;I)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->access$400(Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onClickSelectedItem(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 194
    check-cast p2, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$2;->onClickSelectedItem(Landroid/view/View;Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;I)V

    return-void
.end method

.method public onItemSelected(Landroid/view/View;Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;I)V
    .locals 1

    if-eqz p2, :cond_0

    .line 198
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    iget p3, p2, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;->featureId:I

    iget-object v0, p2, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;->value:Ljava/lang/String;

    invoke-static {p1, p3, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->access$000(Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;ILjava/lang/String;)V

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    invoke-static {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->access$100(Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onItemSelected(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 194
    check-cast p2, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$2;->onItemSelected(Landroid/view/View;Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;I)V

    return-void
.end method
