.class Lcom/transsion/ga/a$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ga/a;->onActivityStopped(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ga/a;


# direct methods
.method constructor <init>(Lcom/transsion/ga/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ga/a$a;->a:Lcom/transsion/ga/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/ga/a$a;->a:Lcom/transsion/ga/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/ga/a;->a(Lcom/transsion/ga/a;I)I

    .line 2
    iget-object v0, p0, Lcom/transsion/ga/a$a;->a:Lcom/transsion/ga/a;

    invoke-static {v0}, Lcom/transsion/ga/a;->a(Lcom/transsion/ga/a;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 4
    iget-object v0, p0, Lcom/transsion/ga/a$a;->a:Lcom/transsion/ga/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/ga/a;->a(Lcom/transsion/ga/a;Z)Z

    .line 5
    iget-object p0, p0, Lcom/transsion/ga/a$a;->a:Lcom/transsion/ga/a;

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/transsion/ga/a;->a(Lcom/transsion/ga/a;J)J

    const-string p0, ""

    .line 6
    invoke-static {p0}, Lcom/transsion/athena/config/data/model/f;->c(Ljava/lang/String;)V

    return-void
.end method
