.class public final enum Lc/d/b/u/d1/a$b;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lc/d/a/b/i/h/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/b/u/d1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/d/b/u/d1/a$b;",
        ">;",
        "Lc/d/a/b/i/h/k;"
    }
.end annotation


# static fields
.field public static final enum d:Lc/d/b/u/d1/a$b;

.field public static final enum e:Lc/d/b/u/d1/a$b;

.field public static final enum f:Lc/d/b/u/d1/a$b;

.field public static final synthetic g:[Lc/d/b/u/d1/a$b;


# instance fields
.field public final c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lc/d/b/u/d1/a$b;

    const-string v1, "UNKNOWN_EVENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lc/d/b/u/d1/a$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc/d/b/u/d1/a$b;->d:Lc/d/b/u/d1/a$b;

    new-instance v1, Lc/d/b/u/d1/a$b;

    const-string v3, "MESSAGE_DELIVERED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lc/d/b/u/d1/a$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lc/d/b/u/d1/a$b;->e:Lc/d/b/u/d1/a$b;

    new-instance v3, Lc/d/b/u/d1/a$b;

    const-string v5, "MESSAGE_OPEN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lc/d/b/u/d1/a$b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lc/d/b/u/d1/a$b;->f:Lc/d/b/u/d1/a$b;

    const/4 v5, 0x3

    new-array v5, v5, [Lc/d/b/u/d1/a$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lc/d/b/u/d1/a$b;->g:[Lc/d/b/u/d1/a$b;

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

    iput p3, p0, Lc/d/b/u/d1/a$b;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/d/b/u/d1/a$b;
    .locals 1

    const-class v0, Lc/d/b/u/d1/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/d/b/u/d1/a$b;

    return-object p0
.end method

.method public static values()[Lc/d/b/u/d1/a$b;
    .locals 1

    sget-object v0, Lc/d/b/u/d1/a$b;->g:[Lc/d/b/u/d1/a$b;

    invoke-virtual {v0}, [Lc/d/b/u/d1/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/d/b/u/d1/a$b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lc/d/b/u/d1/a$b;->c:I

    return v0
.end method
