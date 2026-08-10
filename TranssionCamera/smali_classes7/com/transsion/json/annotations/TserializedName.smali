.class public interface abstract annotation Lcom/transsion/json/annotations/TserializedName;
.super Ljava/lang/Object;
.source "transsion.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/transsion/json/annotations/TserializedName;
        include = true
        name = ""
        objectFactory = Lcom/transsion/json/p;
        transformer = Lcom/transsion/json/b/n;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract include()Z
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract objectFactory()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/transsion/json/p;",
            ">;"
        }
    .end annotation
.end method

.method public abstract transformer()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/transsion/json/b/n;",
            ">;"
        }
    .end annotation
.end method
