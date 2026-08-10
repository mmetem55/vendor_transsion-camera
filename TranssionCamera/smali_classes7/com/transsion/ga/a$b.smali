.class Lcom/transsion/ga/a$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ga/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:J


# direct methods
.method constructor <init>(Lcom/transsion/ga/a;ILjava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/transsion/ga/a$b;->a:I

    .line 3
    iput-object p3, p0, Lcom/transsion/ga/a$b;->b:Ljava/lang/String;

    .line 4
    iput-wide p4, p0, Lcom/transsion/ga/a$b;->c:J

    return-void
.end method
