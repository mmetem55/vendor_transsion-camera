.class Lcom/transsion/ardrawlines/base/BaseAppCompatActivity$2;
.super Ljava/lang/Object;
.source "BaseAppCompatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->addClick(Landroid/view/View;)V
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

    .line 133
    iput-object p1, p0, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity$2;->this$0:Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity$2;->this$0:Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;

    invoke-virtual {p0, p1}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->onViewClicked(Landroid/view/View;)V

    return-void
.end method
