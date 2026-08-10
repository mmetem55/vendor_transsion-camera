.class Lcom/transsion/ardrawlines/base/BaseAppCompatActivity$1;
.super Lcom/transsion/ardrawlines/utils/OnShakeClickListener;
.source "BaseAppCompatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->addShakeClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;


# direct methods
.method constructor <init>(Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity$1;->this$0:Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;

    invoke-direct {p0}, Lcom/transsion/ardrawlines/utils/OnShakeClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPerformClick(Landroid/view/View;)V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity$1;->this$0:Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;

    invoke-virtual {p0, p1}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->onViewClicked(Landroid/view/View;)V

    return-void
.end method
