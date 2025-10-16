.class public final enum Lc/c/b/a/d/q$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/b/a/d/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/c/b/a/d/q$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lc/c/b/a/d/q$a;

.field public static final enum d:Lc/c/b/a/d/q$a;

.field public static final enum e:Lc/c/b/a/d/q$a;

.field public static final enum f:Lc/c/b/a/d/q$a;

.field public static final synthetic g:[Lc/c/b/a/d/q$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lc/c/b/a/d/q$a;

    const-string v1, "LINEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/c/b/a/d/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/c/b/a/d/q$a;->c:Lc/c/b/a/d/q$a;

    new-instance v1, Lc/c/b/a/d/q$a;

    const-string v3, "STEPPED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lc/c/b/a/d/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc/c/b/a/d/q$a;->d:Lc/c/b/a/d/q$a;

    new-instance v3, Lc/c/b/a/d/q$a;

    const-string v5, "CUBIC_BEZIER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lc/c/b/a/d/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lc/c/b/a/d/q$a;->e:Lc/c/b/a/d/q$a;

    new-instance v5, Lc/c/b/a/d/q$a;

    const-string v7, "HORIZONTAL_BEZIER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lc/c/b/a/d/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lc/c/b/a/d/q$a;->f:Lc/c/b/a/d/q$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lc/c/b/a/d/q$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lc/c/b/a/d/q$a;->g:[Lc/c/b/a/d/q$a;

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

.method public static valueOf(Ljava/lang/String;)Lc/c/b/a/d/q$a;
    .locals 1

    const-class v0, Lc/c/b/a/d/q$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/c/b/a/d/q$a;

    return-object p0
.end method

.method public static values()[Lc/c/b/a/d/q$a;
    .locals 1

    sget-object v0, Lc/c/b/a/d/q$a;->g:[Lc/c/b/a/d/q$a;

    invoke-virtual {v0}, [Lc/c/b/a/d/q$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/c/b/a/d/q$a;

    return-object v0
.end method
