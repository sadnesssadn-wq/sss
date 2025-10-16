.class public final enum Lc/d/a/b/i/n/m$a;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lc/d/a/b/i/n/w1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/i/n/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/d/a/b/i/n/m$a;",
        ">;",
        "Lc/d/a/b/i/n/w1;"
    }
.end annotation


# static fields
.field public static final enum d:Lc/d/a/b/i/n/m$a;

.field public static final enum e:Lc/d/a/b/i/n/m$a;

.field public static final enum f:Lc/d/a/b/i/n/m$a;

.field public static final enum g:Lc/d/a/b/i/n/m$a;

.field public static final synthetic h:[Lc/d/a/b/i/n/m$a;


# instance fields
.field public final c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lc/d/a/b/i/n/m$a;

    const-string v1, "RESULT_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lc/d/a/b/i/n/m$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc/d/a/b/i/n/m$a;->d:Lc/d/a/b/i/n/m$a;

    new-instance v1, Lc/d/a/b/i/n/m$a;

    const-string v3, "RESULT_SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lc/d/a/b/i/n/m$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lc/d/a/b/i/n/m$a;->e:Lc/d/a/b/i/n/m$a;

    new-instance v3, Lc/d/a/b/i/n/m$a;

    const-string v5, "RESULT_FAIL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lc/d/a/b/i/n/m$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lc/d/a/b/i/n/m$a;->f:Lc/d/a/b/i/n/m$a;

    new-instance v5, Lc/d/a/b/i/n/m$a;

    const-string v7, "RESULT_SKIPPED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lc/d/a/b/i/n/m$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lc/d/a/b/i/n/m$a;->g:Lc/d/a/b/i/n/m$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lc/d/a/b/i/n/m$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lc/d/a/b/i/n/m$a;->h:[Lc/d/a/b/i/n/m$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lc/d/a/b/i/n/m$a;->c:I

    return-void
.end method

.method public static a(I)Lc/d/a/b/i/n/m$a;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lc/d/a/b/i/n/m$a;->g:Lc/d/a/b/i/n/m$a;

    return-object p0

    :cond_1
    sget-object p0, Lc/d/a/b/i/n/m$a;->f:Lc/d/a/b/i/n/m$a;

    return-object p0

    :cond_2
    sget-object p0, Lc/d/a/b/i/n/m$a;->e:Lc/d/a/b/i/n/m$a;

    return-object p0

    :cond_3
    sget-object p0, Lc/d/a/b/i/n/m$a;->d:Lc/d/a/b/i/n/m$a;

    return-object p0
.end method

.method public static values()[Lc/d/a/b/i/n/m$a;
    .locals 1

    sget-object v0, Lc/d/a/b/i/n/m$a;->h:[Lc/d/a/b/i/n/m$a;

    invoke-virtual {v0}, [Lc/d/a/b/i/n/m$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/d/a/b/i/n/m$a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lc/d/a/b/i/n/m$a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/d/a/b/i/n/m$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lc/d/a/b/i/n/m$a;->c:I

    return v0
.end method
