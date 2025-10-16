.class public final enum Lc/d/a/b/i/h/l;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/d/a/b/i/h/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lc/d/a/b/i/h/l;

.field public static final enum d:Lc/d/a/b/i/h/l;

.field public static final enum e:Lc/d/a/b/i/h/l;

.field public static final synthetic f:[Lc/d/a/b/i/h/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lc/d/a/b/i/h/l;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/d/a/b/i/h/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/d/a/b/i/h/l;->c:Lc/d/a/b/i/h/l;

    new-instance v1, Lc/d/a/b/i/h/l;

    const-string v3, "SIGNED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lc/d/a/b/i/h/l;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc/d/a/b/i/h/l;->d:Lc/d/a/b/i/h/l;

    new-instance v3, Lc/d/a/b/i/h/l;

    const-string v5, "FIXED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lc/d/a/b/i/h/l;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lc/d/a/b/i/h/l;->e:Lc/d/a/b/i/h/l;

    const/4 v5, 0x3

    new-array v5, v5, [Lc/d/a/b/i/h/l;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lc/d/a/b/i/h/l;->f:[Lc/d/a/b/i/h/l;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lc/d/a/b/i/h/l;
    .locals 1

    sget-object v0, Lc/d/a/b/i/h/l;->f:[Lc/d/a/b/i/h/l;

    invoke-virtual {v0}, [Lc/d/a/b/i/h/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/d/a/b/i/h/l;

    return-object v0
.end method
