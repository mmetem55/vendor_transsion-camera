.class Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;
.super Ljava/lang/Object;
.source "FeatureLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->showResetDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

.field final synthetic val$oldPostion:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;I)V
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    iput p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->val$oldPostion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 538
    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->getDefaultSkin()Ljava/lang/String;

    .line 539
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 541
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$1500(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Z

    move-result p1

    const-string p2, "white"

    if-eqz p1, :cond_3

    .line 542
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->getDefaultSkin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p2, "2"

    if-nez p1, :cond_1

    .line 543
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$1600(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "{\"bodySlim\":20,\"buttPlump\":-48,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":20,\"legLengthen\":0,\"legSlim\":0,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":8,\"waistSlim\":38}"

    goto :goto_0

    :cond_0
    const-string p1, "{\"bodySlim\":10,\"buttPlump\":15,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":70,\"legLengthen\":0,\"legSlim\":0,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-25,\"waistSlim\":20}"

    goto :goto_0

    .line 549
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$1600(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "{\"bodySlim\":5,\"buttPlump\":0,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":70,\"legLengthen\":25,\"legSlim\":20,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":15,\"waistSlim\":30}"

    goto :goto_0

    :cond_2
    const-string p1, "{\"bodySlim\":0,\"buttPlump\":15,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":20,\"legLengthen\":20,\"legSlim\":10,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-25,\"waistSlim\":20}"

    goto :goto_0

    .line 556
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->getDefaultSkin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "{\"bodySlim\":20,\"buttPlump\":-31,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":50,\"legLengthen\":0,\"legSlim\":0,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-84,\"waistSlim\":42}"

    goto :goto_0

    :cond_4
    const-string p1, "{\"bodySlim\":5,\"buttPlump\":-31,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":20,\"legLengthen\":57,\"legSlim\":20,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-84,\"waistSlim\":42}"

    .line 562
    :goto_0
    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    iget v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->val$oldPostion:I

    invoke-static {p2, p1, v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$1700(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;Ljava/lang/String;I)V

    .line 563
    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p2}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$100(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p2}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$200(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_1

    .line 566
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$700(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_2

    .line 564
    :cond_6
    :goto_1
    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p2}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$000(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$000(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "key_slimbody_custom"

    invoke-virtual {p2, v1, p1, p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_2
    return-void
.end method
