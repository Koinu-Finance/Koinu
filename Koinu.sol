/**

 
     KKKKKKKKK    KKKKKKK     OOOOOOOOO     IIIIIIIIIINNNNNNNN        NNNNNNNNUUUUUUUU     UUUUUUUU     
     K:::::::K    K:::::K   OO:::::::::OO   I::::::::IN:::::::N       N::::::NU::::::U     U::::::U     
     K:::::::K    K:::::K OO:::::::::::::OO I::::::::IN::::::::N      N::::::NU::::::U     U::::::U     
     K:::::::K   K::::::KO:::::::OOO:::::::OII::::::IIN:::::::::N     N::::::NUU:::::U     U:::::UU     
     KK::::::K  K:::::KKKO::::::O   O::::::O  I::::I  N::::::::::N    N::::::N U:::::U     U:::::U      
       K:::::K K:::::K   O:::::O     O:::::O  I::::I  N:::::::::::N   N::::::N U:::::D     D:::::U      
       K::::::K:::::K    O:::::O     O:::::O  I::::I  N:::::::N::::N  N::::::N U:::::D     D:::::U      
       K:::::::::::K     O:::::O     O:::::O  I::::I  N::::::N N::::N N::::::N U:::::D     D:::::U      
       K:::::::::::K     O:::::O     O:::::O  I::::I  N::::::N  N::::N:::::::N U:::::D     D:::::U      
       K::::::K:::::K    O:::::O     O:::::O  I::::I  N::::::N   N:::::::::::N U:::::D     D:::::U      
       K:::::K K:::::K   O:::::O     O:::::O  I::::I  N::::::N    N::::::::::N U:::::D     D:::::U      
     KK::::::K  K:::::KKKO::::::O   O::::::O  I::::I  N::::::N     N:::::::::N U::::::U   U::::::U      
     K:::::::K   K::::::KO:::::::OOO:::::::OII::::::IIN::::::N      N::::::::N U:::::::UUU:::::::U      
     K:::::::K    K:::::K OO:::::::::::::OO I::::::::IN::::::N       N:::::::N  UU:::::::::::::UU       
     K:::::::K    K:::::K   OO:::::::::OO   I::::::::IN::::::N        N::::::N    UU:::::::::UU         
     KKKKKKKKK    KKKKKKK     OOOOOOOOO     IIIIIIIIIINNNNNNNN         NNNNNNN      UUUUUUUUU           

  
    Because Puppies!
    
    KOINU $KOINU
    小犬 (こいぬ)
    
    Automatic Staking
    AntiWhale
    AntiDump
    Updateable Router
    
    Japanese for Puppy, KOINU is a hyper-deflationary, automatic yielding social token.
    
    TOKENOMICS 
    
    9% FEE PER TRANSACTION
    - 3% rewards distributed to all holders proportionally including burn address
    - 4% fee per transaction auto add to the liquidity pool
    - 1% to marketing wallet
    - 1% to charity address for Dog Rescue Groups

    1,000,000,000,000,000 total supply (1 Quadrillion).
    
    50% of Total Supply Burnt on Launch.
    
    SPDX-License-Identifier: Unlicensed
*/
pragma solidity ^0.6.12;

interface IBEP20 {

    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `recipient`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
    
     *
     * Emits a {Transfer} event.
     */
    function transfer(address recipient, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `sender` to `recipient` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);

    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);
}


// pragma solidity >=0.5.0;

interface IPancakeFactory {
    event PairCreated(address indexed token0, address indexed token1, address pair, uint);

    function feeTo() external view returns (address);
    function feeToSetter() external view returns (address);

    function getPair(address tokenA, address tokenB) external view returns (address pair);
    function allPairs(uint) external view returns (address pair);
    function allPairsLength() external view returns (uint);

    function createPair(address tokenA, address tokenB) external returns (address pair);

    function setFeeTo(address) external;
    function setFeeToSetter(address) external;
    
    function INIT_CODE_PAIR_HASH() external view returns (bytes32);
}


// pragma solidity >=0.5.0;

interface IPancakePair {
    event Approval(address indexed owner, address indexed spender, uint value);
    event Transfer(address indexed from, address indexed to, uint value);

    function name() external pure returns (string memory);
    function symbol() external pure returns (string memory);
    function decimals() external pure returns (uint8);
    function totalSupply() external view returns (uint);
    function balanceOf(address owner) external view returns (uint);
    function allowance(address owner, address spender) external view returns (uint);

    function approve(address spender, uint value) external returns (bool);
    function transfer(address to, uint value) external returns (bool);
    function transferFrom(address from, address to, uint value) external returns (bool);

    function DOMAIN_SEPARATOR() external view returns (bytes32);
    function PERMIT_TYPEHASH() external pure returns (bytes32);
    function nonces(address owner) external view returns (uint);

    function permit(address owner, address spender, uint value, uint deadline, uint8 v, bytes32 r, bytes32 s) external;

    event Mint(address indexed sender, uint amount0, uint amount1);
    event Burn(address indexed sender, uint amount0, uint amount1, address indexed to);
    event Swap(
        address indexed sender,
        uint amount0In,
        uint amount1In,
        uint amount0Out,
        uint amount1Out,
        address indexed to
    );
    event Sync(uint112 reserve0, uint112 reserve1);

    function MINIMUM_LIQUIDITY() external pure returns (uint);
    function factory() external view returns (address);
    function token0() external view returns (address);
    function token1() external view returns (address);
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
    function price0CumulativeLast() external view returns (uint);
    function price1CumulativeLast() external view returns (uint);
    function kLast() external view returns (uint);

    function mint(address to) external returns (uint liquidity);
    function burn(address to) external returns (uint amount0, uint amount1);
    function swap(uint amount0Out, uint amount1Out, address to, bytes calldata data) external;
    function skim(address to) external;
    function sync() external;

    function initialize(address, address) external;
}


// pragma solidity >=0.6.2;

interface IPancakeRouter01 {
    function factory() external pure returns (address);
    function WETH() external pure returns (address);

    function addLiquidity(
        address tokenA,
        address tokenB,
        uint amountADesired,
        uint amountBDesired,
        uint amountAMin,
        uint amountBMin,
        address to,
        uint deadline
    ) external returns (uint amountA, uint amountB, uint liquidity);
    function addLiquidityBNB(
        address token,
        uint amountTokenDesired,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline
    ) external payable returns (uint amountToken, uint amountBNB, uint liquidity);
    function removeLiquidity(
        address tokenA,
        address tokenB,
        uint liquidity,
        uint amountAMin,
        uint amountBMin,
        address to,
        uint deadline
    ) external returns (uint amountA, uint amountB);
    function removeLiquidityBNB(
        address token,
        uint liquidity,
        uint amountTokenMin,
        uint amountBNBMin,
        address to,
        uint deadline
    ) external returns (uint amountToken, uint amountBNB);
    function removeLiquidityWithPermit(
        address tokenA,
        address tokenB,
        uint liquidity,
        uint amountAMin,
        uint amountBMin,
        address to,
        uint deadline,
        bool approveMax, uint8 v, bytes32 r, bytes32 s
    ) external returns (uint amountA, uint amountB);
    function removeLiquidityBNBWithPermit(
        address token,
        uint liquidity,
        uint amountTokenMin,
        uint amountBNBMin,
        address to,
        uint deadline,
        bool approveMax, uint8 v, bytes32 r, bytes32 s
    ) external returns (uint amountToken, uint amountBNB);
    function swapExactTokensForTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external returns (uint[] memory amounts);
    function swapTokensForExactTokens(
        uint amountOut,
        uint amountInMax,
        address[] calldata path,
        address to,
        uint deadline
    ) external returns (uint[] memory amounts);
    function swapExactBNBForTokens(uint amountOutMin, address[] calldata path, address to, uint deadline)
        external
        payable
        returns (uint[] memory amounts);
    function swapTokensForExactBNB(uint amountOut, uint amountInMax, address[] calldata path, address to, uint deadline)
        external
        returns (uint[] memory amounts);
    function swapExactTokensForBNB(uint amountIn, uint amountOutMin, address[] calldata path, address to, uint deadline)
        external
        returns (uint[] memory amounts);
    function swapBNBForExactTokens(uint amountOut, address[] calldata path, address to, uint deadline)
        external
        payable
        returns (uint[] memory amounts);

    function quote(uint amountA, uint reserveA, uint reserveB) external pure returns (uint amountB);
    function getAmountOut(uint amountIn, uint reserveIn, uint reserveOut) external pure returns (uint amountOut);
    function getAmountIn(uint amountOut, uint reserveIn, uint reserveOut) external pure returns (uint amountIn);
    function getAmountsOut(uint amountIn, address[] calldata path) external view returns (uint[] memory amounts);
    function getAmountsIn(uint amountOut, address[] calldata path) external view returns (uint[] memory amounts);
}


// pragma solidity >=0.6.2;

interface IPancakeRouter02 is IPancakeRouter01 {
    function removeLiquidityBNBSupportingFeeOnTransferTokens(
        address token,
        uint liquidity,
        uint amountTokenMin,
        uint amountBNBMin,
        address to,
        uint deadline
    ) external returns (uint amountBNB);
    function removeLiquidityBNBWithPermitSupportingFeeOnTransferTokens(
        address token,
        uint liquidity,
        uint amountTokenMin,
        uint amountBNBMin,
        address to,
        uint deadline,
        bool approveMax, uint8 v, bytes32 r, bytes32 s
    ) external returns (uint amountBNB);

    function swapExactTokensForTokensSupportingFeeOnTransferTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external;
    function swapExactBNBForTokensSupportingFeeOnTransferTokens(
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external payable;
    function swapExactTokensForBNBSupportingFeeOnTransferTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external;
}

/**
 * @dev Wrappers over Solidity's arithmetic operations with added overflow
 * checks.
 *
 * Arithmetic operations in Solidity wrap on overflow. This can easily result
 * in bugs, because programmers usually assume that an overflow raises an
 * error, which is the standard behavior in high level programming languages.
 * `SafeMath` restores this intuition by reverting the transaction when an
 * operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 */
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return sub(a, b, "SafeMath: subtraction overflow");
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        uint256 c = a - b;

        return c;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");

        return c;
    }

    /**
     * @dev Returns the integer division of two unsigned integers. Reverts on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return div(a, b, "SafeMath: division by zero");
    }

    /**
     * @dev Returns the integer division of two unsigned integers. Reverts with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        uint256 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold

        return c;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * Reverts when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return mod(a, b, "SafeMath: modulo by zero");
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * Reverts with custom message when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b != 0, errorMessage);
        return a % b;
    }
}


/**
 * @dev Collection of functions related to the address type
 */
library Address {
    /**
     * @dev Returns true if `account` is a contract.
     *
     * [IMPORTANT]
     * ====
     * It is unsafe to assume that an address for which this function returns
     * false is an externally-owned account (EOA) and not a contract.
     *
     * Among others, `isContract` will return false for the following
     * types of addresses:
     *
     *  - an externally-owned account
     *  - a contract in construction
     *  - an address where a contract will be created
     *  - an address where a contract lived, but was destroyed
     * ====
     */
    function isContract(address account) internal view returns (bool) {
        // According to EIP-1052, 0x0 is the value returned for not-yet created accounts
        // and 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 is returned
        // for accounts without code, i.e. `keccak256('')`
        bytes32 codehash;
        bytes32 accountHash = 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470;
        // solhint-disable-next-line no-inline-assembly
        assembly { codehash := extcodehash(account) }
        return (codehash != accountHash && codehash != 0x0);
    }

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://diligence.consensys.net/posts/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");

        // solhint-disable-next-line avoid-low-level-calls, avoid-call-value
        (bool success, ) = recipient.call{ value: amount }("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain`call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason, it is bubbled up by this
     * function (like regular Solidity function calls).
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     *
     * _Available since v3.1._
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
      return functionCall(target, data, "Address: low-level call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
     * `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCall(address target, bytes memory data, string memory errorMessage) internal returns (bytes memory) {
        return _functionCallWithValue(target, data, 0, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {
        return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
    }

    /**
     * @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
     * with `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(address target, bytes memory data, uint256 value, string memory errorMessage) internal returns (bytes memory) {
        require(address(this).balance >= value, "Address: insufficient balance for call");
        return _functionCallWithValue(target, data, value, errorMessage);
    }

    function _functionCallWithValue(address target, bytes memory data, uint256 weiValue, string memory errorMessage) private returns (bytes memory) {
        require(isContract(target), "Address: call to non-contract");

        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory returndata) = target.call{ value: weiValue }(data);
        if (success) {
            return returndata;
        } else {
            // Look for revert reason and bubble it up if present
            if (returndata.length > 0) {
                // The easiest way to bubble the revert reason is using memory via assembly

                // solhint-disable-next-line no-inline-assembly
                assembly {
                    let returndata_size := mload(returndata)
                    revert(add(32, returndata), returndata_size)
                }
            } else {
                revert(errorMessage);
            }
        }
    }
}


abstract contract Context {
    function _msgSender() internal view virtual returns (address payable) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes memory) {
        this; // silence state mutability warning without generating bytecode - see https://github.com/ethereum/solidity/issues/2691
        return msg.data;
    }
}


/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
contract Ownable is Context {
    address private _owner;
    address private _previousOwner;
    uint256 private _lockTime;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor () internal {
        address msgSender = _msgSender();
        _owner = msgSender;
        emit OwnershipTransferred(address(0), msgSender);
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(_owner == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

     /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }

    function getUnlockTime() public view returns (uint256) {
        return _lockTime;
    }

    //Locks the contract for owner for the amount of time provided
    function lock(uint256 time) public virtual onlyOwner {
        _previousOwner = _owner;
        _owner = address(0);
        _lockTime = now + time;
        emit OwnershipTransferred(_owner, address(0));
    }
    
    //Unlocks the contract for owner when _lockTime is exceeds
    function unlock() public virtual {
        require(_previousOwner == msg.sender, "You don't have permission to unlock");
        require(now > _lockTime , "Contract is locked until 7 days");
        emit OwnershipTransferred(_owner, _previousOwner);
        _owner = _previousOwner;
    }
}


contract Koinu is Context, IBEP20, Ownable {
    using SafeMath for uint256;
    using Address for address;

    mapping (address => uint256) private _rOwned;
    mapping (address => uint256) private _tOwned;
    mapping (address => mapping (address => uint256)) private _allowances;
    mapping (address => bool) private _isExcludedFromFee;
    mapping (address => bool) private _isExcluded;
    
    ///@dev The swap router, modifiable. Will be changed to KOINU's router when our AMM is released
    IPancakeRouter02 public koinuRouter;
    address public liquidityPair;
    address payable _marketingAddress;
    address payable _charityAddress;
    address private _burnAddress;
    address[] private _excluded;
    bool private isSwapAndLiquify;
    bool private swappingInProgress;
    uint256 private _tFeeTotal;
    
    string private constant NAME = "KOINU";
    string private constant SYMBOL = "KOINU";
    uint8 private constant DECIMALS = 9;
    uint256 private constant MAX = ~uint256(0);
    uint256 private constant TOTAL = 1000000000 * 10**6 * 10**9;
    uint256 private constant LIQUIDITY_TOKENS = 400000000 * 10**6 * 10**9;
    uint256 public _rewardFee = 3;
    uint256 public _liquidityFee = 4;
    uint256 public _marketingFee = 1;
    uint256 public _charityFee = 1;
    uint256 public _maxSellAmount = 5; // sell amount divided by this amount (5 = 20%)
    //anti-whale mechanism
    uint256 public _maxTxAmount = 5000000 * 10**6 * 10**9;
    bool public swapAndLiquifyEnabled = true;
    bool public tradingEnabled = false;
    // anti-dumping mechanism
    bool public _antiDumpToggle = false;
    uint256 private _previousRewardFee = _rewardFee;
    uint256 private _previousLiquidityFee = _liquidityFee;
    uint256 private _previousMarketingFee = _marketingFee;
    uint256 private _previousCharityFee = _charityFee;
    uint256 private _rTotal = (MAX - (MAX % TOTAL));

    event KoinuRouterUpdated(address indexed owner, address indexed router, address indexed pair);
    event ExcludeFromFee(address indexed owner, address indexed account);
    event IncludeInFee(address indexed owner, address indexed account);
    event ExcludeFromReward(address indexed owner, address indexed account);
    event IncludeInReward(address indexed owner, address indexed account);
    event AntiDumpDivisorUpdated(address indexed owner, uint256 divisor);
    event CharityAddressUpdated(address indexed owner, address indexed CharityAddress);
    event MarketingAddressUpdated(address indexed owner, address indexed MarketingAddress);
    event RewardFeeUpdated(address indexed owner, uint256 rewardFee);
    event LiquidityFeeUpdated(address indexed owner, uint256 liquidityFee);
    event MarketingFeeUpdated(address indexed owner, uint256 marketingFee);
    event CharityFeeUpdated(address indexed owner, uint256 charityFee);
    event TradingEnabled(address indexed owner, bool tradingEnabled);
    event MinTokensBeforeSwapUpdated(uint256 minTokensBeforeSwap);
    event AntiDump(bool setting);
    event SwapAndLiquifyEnabledUpdated(bool enabled);
    event SwapAndLiquify(
        uint256 tokensSwapped,
        uint256 ethReceived,
        uint256 tokensIntoLiquidity
    );

    constructor (address payable CharityAddress, address payable MarketingAddress, address BurnAddress, IPancakeRouter02 KoinuRouter) public {
        _rOwned[_msgSender()] = _rTotal;
        // PancakeSwap Router address: (BSC testnet) 0xD99D1c33F9fC3444f8101754aBC46c52416550D1  (BSC mainnet) V2 0x10ED43C718714eb63d5aA57B78B54704E256024E
        liquidityPair = IPancakeFactory(KoinuRouter.factory())
            .createPair(address(this), KoinuRouter.WETH());

        // set the rest of the contract variables
        koinuRouter = KoinuRouter;
        _marketingAddress = MarketingAddress;
        _charityAddress = CharityAddress;
        _burnAddress = BurnAddress;
        
        //exclude owner, marketing and this contract from fee
        _isExcludedFromFee[owner()] = true;
        _isExcludedFromFee[address(this)] = true;
        _isExcludedFromFee[_marketingAddress] = true;
        _isExcludedFromFee[_charityAddress] = true;

        emit Transfer(address(0), _msgSender(), TOTAL);
    }
    
    receive() external payable {}
    
        
    modifier lockTheSwap {
        isSwapAndLiquify = true;
        _;
        isSwapAndLiquify = false;
    }
    
    function transfer(address recipient, uint256 amount) external override returns (bool) {
        _transfer(_msgSender(), recipient, amount);
        return true;
    }

    function approve(address spender, uint256 amount) external override returns (bool) {
        _approve(_msgSender(), spender, amount);
        return true;
    }

    function transferFrom(address sender, address recipient, uint256 amount) external override returns (bool) {
        _transfer(sender, recipient, amount);
        _approve(sender, _msgSender(), _allowances[sender][_msgSender()].sub(amount, "BEP20: transfer amount exceeds allowance"));
        return true;
    }

    function increaseAllowance(address spender, uint256 addedValue) external virtual returns (bool) {
        _approve(_msgSender(), spender, _allowances[_msgSender()][spender].add(addedValue));
        return true;
    }

    function decreaseAllowance(address spender, uint256 subtractedValue) external virtual returns (bool) {
        _approve(_msgSender(), spender, _allowances[_msgSender()][spender].sub(subtractedValue, "BEP20: decreased allowance below zero"));
        return true;
    }

    function includeInReward(address account) external onlyOwner() {
        require(_isExcluded[account], "Account is not excluded");
        for (uint256 i = 0; i < _excluded.length; i++) {
            if (_excluded[i] == account) {
                _excluded[i] = _excluded[_excluded.length - 1];
                _tOwned[account] = 0;
                _isExcluded[account] = false;
                _excluded.pop();
                emit IncludeInReward(msg.sender, account);
                break;
            }
        }
    }
    
    function setCharityAddress(address payable CharityAddress) external onlyOwner()  {
        require(!_isExcluded[CharityAddress], "Can't be excluded address");
        _charityAddress = CharityAddress;
        emit CharityAddressUpdated(msg.sender, CharityAddress);
    }
    
    function setMarketingAddress(address payable MarketingAddress) external onlyOwner()  {
        require(!_isExcluded[MarketingAddress], "Can't be excluded address");
        _marketingAddress = MarketingAddress;
        emit MarketingAddressUpdated(msg.sender, MarketingAddress);
    }

    function setRewardFeePercent(uint256 rewardFee) external onlyOwner() {
        _rewardFee = rewardFee;
        emit RewardFeeUpdated(msg.sender, rewardFee);
    }
    
    function setLiquidityFeePercent(uint256 liquidityFee) external onlyOwner() {
        _liquidityFee = liquidityFee;
        emit LiquidityFeeUpdated(msg.sender, liquidityFee);
    }

    function setMarketingFeePercent(uint256 marketingFee) external onlyOwner() {
        _marketingFee = marketingFee;
        emit MarketingFeeUpdated(msg.sender, marketingFee);
    }
    
    function setCharityFeePercent(uint256 charityFee) external onlyOwner() {
        _charityFee = charityFee;
        emit CharityFeeUpdated(msg.sender, charityFee);
    }

    function setMaxTxPercent(uint256 maxTxPercent) external onlyOwner() {
        _maxTxAmount = TOTAL.mul(maxTxPercent).div(
            10**2
        );
    }
    
    function enableTrading() external onlyOwner() {
        tradingEnabled = true;
        emit TradingEnabled(msg.sender, tradingEnabled);
    }
    
    ///@dev Flash Loan Attack Protection
    function disableTrading() external onlyOwner() {
        tradingEnabled = false;
        emit TradingEnabled(msg.sender, tradingEnabled);
    }
    
    // This will allow to rescue BNB sent by mistake directly to the contract & allow to withdraw left-over accumulated BNB
    function rescueBNBFromContract() external onlyOwner {
        address payable _owner = _msgSender();
        _owner.transfer(address(this).balance);
    }

    function antiDumpToggle(bool setting) external onlyOwner {
        _antiDumpToggle = setting;
        emit AntiDump(setting);
    }

    function swapAndLiquifyToggle(bool setting) external onlyOwner {
        swapAndLiquifyEnabled = setting;
        emit SwapAndLiquifyEnabledUpdated(setting);
    }
    
    function setAntiDumpDivisor(uint256 divisor) external onlyOwner {
        _maxSellAmount = divisor;
        emit AntiDumpDivisorUpdated(msg.sender, divisor);
    }
    
    function totalSupply() external view override returns (uint256) {
        return TOTAL;
    }
    
    function allowance(address owner, address spender) external view override returns (uint256) {
        return _allowances[owner][spender];
    }

    function isExcludedFromReward(address account) external view returns (bool) {
        return _isExcluded[account];
    }

    function totalFees() external view returns (uint256) {
        return _tFeeTotal;
    }
        
    function name() external pure returns (string memory) {
        return NAME;
    }

    function symbol() external pure returns (string memory) {
        return SYMBOL;
    }

    function decimals() external pure returns (uint8) {
        return DECIMALS;
    }
    
    function balanceOf(address account) public view override returns (uint256) {
        if (_isExcluded[account]) return _tOwned[account];
        return tokenFromReflection(_rOwned[account]);
    }

    function deliver(uint256 tAmount) public {
        address sender = _msgSender();
        require(!_isExcluded[sender], "Excluded addresses cannot call this function");

        (,uint256 tReward, uint256 tLiquidity, uint256 tMarketing, uint256 tBurn) = _getTValues(tAmount);
        (uint256 rAmount,,) = _getRValues(tAmount, tReward, tLiquidity, tMarketing, tBurn, _getRate());
        
        _rOwned[sender] = _rOwned[sender].sub(rAmount);
        _rTotal = _rTotal.sub(rAmount);
        _tFeeTotal = _tFeeTotal.add(tAmount);
    }

    function excludeFromReward(address account) public onlyOwner() {
        // require(account != koinuRouter, 'We can not exclude router.');
        require(!_isExcluded[account], "Account is already excluded");
        if(_rOwned[account] > 0) {
            _tOwned[account] = tokenFromReflection(_rOwned[account]);
        }
        _isExcluded[account] = true;
        _excluded.push(account);
        emit ExcludeFromReward(msg.sender, account);
    }

    function excludeFromFee(address account) public onlyOwner {
        _isExcludedFromFee[account] = true;
        emit ExcludeFromFee(msg.sender, account);
    }
    
    function includeInFee(address account) public onlyOwner {
        _isExcludedFromFee[account] = false;
        emit IncludeInFee(msg.sender, account);
    }
    
    /**
     * @dev Update the swap router.
     * Can only be called by the current owner.
     */
    function updateKoinuRouter(IPancakeRouter02 _router) public onlyOwner {
        koinuRouter = IPancakeRouter02(_router);
        liquidityPair = IPancakeFactory(koinuRouter.factory()).createPair(address(this), koinuRouter.WETH());
        require(liquidityPair != address(0), "KOINU::updateKoinuRouter: Invalid pair address.");
        emit KoinuRouterUpdated(msg.sender, address(koinuRouter), liquidityPair);
    }

    function charityAddress() public view returns (address) {
        return _charityAddress;
    }

    function marketingAddress() public view returns (address) {
        return _marketingAddress;
    }
    
    function burnAddress() public view returns (address) {
        return _burnAddress;
    }
    
    function reflectionFromToken(uint256 tAmount, bool deductTransferFee) public view returns(uint256) {
        require(tAmount <= TOTAL, "Amount must be less than supply");
        
        (,uint256 tReward, uint256 tLiquidity, uint256 tMarketing, uint256 tBurn) = _getTValues(tAmount);
        (uint256 rAmount, uint256 rTransferAmount,) = _getRValues(tAmount, tReward, tLiquidity, tMarketing, tBurn, _getRate());

        if (!deductTransferFee) {
            return rAmount;
        } else {
            return rTransferAmount;
        }
    }

    function tokenFromReflection(uint256 rAmount) public view returns(uint256) {
        require(rAmount <= _rTotal, "Amount must be less than total reflections");
        uint256 currentRate =  _getRate();
        return rAmount.div(currentRate);
    }

    function _transferBothExcluded(address sender, address recipient, uint256 tAmount) private {
        (uint256 tTransferAmount, uint256 tReward, uint256 tLiquidity, uint256 tMarketing, uint256 tCharity) = _getTValues(tAmount);
        (uint256 rAmount, uint256 rTransferAmount, uint256 rFee) = _getRValues(tAmount, tReward, tLiquidity, tMarketing, tCharity, _getRate());

        _tOwned[sender] = _tOwned[sender].sub(tAmount);
        _rOwned[sender] = _rOwned[sender].sub(rAmount);
        _tOwned[recipient] = _tOwned[recipient].add(tTransferAmount);
        _rOwned[recipient] = _rOwned[recipient].add(rTransferAmount);
        _takeLiquidity(tLiquidity);
        _takeMarketingFee(tMarketing);
        _takeCharityFee(tCharity);
        _reflectFee(rFee, tReward);
        emit Transfer(sender, recipient, tTransferAmount);
    }
    
    function _reflectFee(uint256 rFee, uint256 tReward) private {
        _rTotal = _rTotal.sub(rFee);
        _tFeeTotal = _tFeeTotal.add(tReward);
    }

    function _getValues(uint256 tAmount) private view returns (uint256, uint256, uint256, uint256, uint256, uint256, uint256, uint256) {
        (uint256 tTransferAmount, uint256 tReward, uint256 tLiquidity, uint256 tMarketing, uint256 tBurn) = _getTValues(tAmount);
        (uint256 rAmount, uint256 rTransferAmount, uint256 rFee) = _getRValues(tAmount, tReward, tLiquidity, tMarketing, tBurn, _getRate());
        return (rAmount, rTransferAmount, rFee, tTransferAmount, tReward, tLiquidity, tMarketing, tBurn);
    }

    function _getTValues(uint256 tAmount) private view returns (uint256, uint256, uint256, uint256, uint256) {
        uint256 tReward = calculateRewardFee(tAmount);
        uint256 tLiquidity = calculateLiquidityFee(tAmount);
        uint256 tMarketing = calculateMarketingFee(tAmount);
        uint256 tCharity = calculateCharityFee(tAmount);
        uint256 tTransferAmount = tAmount.sub(tReward).sub(tLiquidity);
                tTransferAmount = tTransferAmount.sub(tMarketing);
                tTransferAmount = tTransferAmount.sub(tCharity);

        return (tTransferAmount, tReward, tLiquidity, tMarketing, tCharity);
    }

    function _getRValues(uint256 tAmount, uint256 tReward, uint256 tLiquidity, uint256 tMarketing, uint256 tCharity, uint256 currentRate) private pure returns (uint256, uint256, uint256) {
        uint256 rAmount = tAmount.mul(currentRate);
        uint256 rFee = tReward.mul(currentRate);
        uint256 rLiquidity = tLiquidity.mul(currentRate);
        uint256 rMarketing = tMarketing.mul(currentRate);
        uint256 rCharity = tCharity.mul(currentRate);
        uint256 rTransferAmount = rAmount.sub(rFee).sub(rLiquidity).sub(rMarketing).sub(rCharity);
        return (rAmount, rTransferAmount, rFee);
    }

    function _getRate() private view returns(uint256) {
        (uint256 rSupply, uint256 tSupply) = _getCurrentSupply();
        return rSupply.div(tSupply);
    }

    function _getCurrentSupply() private view returns(uint256, uint256) {
        uint256 rSupply = _rTotal;
        uint256 tSupply = TOTAL;      
        for (uint256 i = 0; i < _excluded.length; i++) {
            if (_rOwned[_excluded[i]] > rSupply || _tOwned[_excluded[i]] > tSupply) return (_rTotal, TOTAL);
            rSupply = rSupply.sub(_rOwned[_excluded[i]]);
            tSupply = tSupply.sub(_tOwned[_excluded[i]]);
        }
        if (rSupply < _rTotal.div(TOTAL)) return (_rTotal, TOTAL);
        return (rSupply, tSupply);
    }
    
    function _takeLiquidity(uint256 tLiquidity) private {
        uint256 currentRate =  _getRate();
        uint256 rLiquidity = tLiquidity.mul(currentRate);
        _rOwned[address(this)] = _rOwned[address(this)].add(rLiquidity);
        if(_isExcluded[address(this)])
            _tOwned[address(this)] = _tOwned[address(this)].add(tLiquidity);
    }
    
    function _takeMarketingFee(uint256 tMarketing) private {
        uint256 currentRate =  _getRate();
        uint256 rMarketing = tMarketing.mul(currentRate);
        _rOwned[_marketingAddress] = _rOwned[_marketingAddress].add(rMarketing);
        if(_isExcluded[_marketingAddress])
            _tOwned[_marketingAddress] = _tOwned[_marketingAddress].add(tMarketing);
    }

    function _takeCharityFee(uint256 tCharity) private {
        uint256 currentRate =  _getRate();
        uint256 rCharity = tCharity.mul(currentRate);
        _rOwned[_charityAddress] = _rOwned[_charityAddress].add(rCharity);
        if(_isExcluded[_charityAddress])
            _tOwned[_charityAddress] = _tOwned[_charityAddress].add(tCharity);
    }
    
    function calculateRewardFee(uint256 _amount) private view returns (uint256) {
        return _amount.mul(_rewardFee).div(
            10**2
        );
    }

    function calculateLiquidityFee(uint256 _amount) private view returns (uint256) {
        return _amount.mul(_liquidityFee).div(
            10**2
        );
    }
    
    function calculateMarketingFee(uint256 _amount) private view returns (uint256) {
        return _amount.mul(_marketingFee).div(
            10**2
        );
    }

    function calculateCharityFee(uint256 _amount) private view returns (uint256) {
        return _amount.mul(_charityFee).div(
            10**2
        );
    }
    
    function removeAllFee() private {
        if(_rewardFee == 0 && _liquidityFee == 0) return;
        
        _previousRewardFee = _rewardFee;
        _previousLiquidityFee = _liquidityFee;
        _previousMarketingFee = _marketingFee;
        _previousCharityFee = _charityFee;
        
        _rewardFee = 0;
        _liquidityFee = 0;
        _marketingFee = 0;
        _charityFee = 0;
    }

    function restoreAllFee() private {
        _rewardFee = _previousRewardFee;
        _liquidityFee = _previousLiquidityFee;
        _marketingFee = _previousMarketingFee;
        _charityFee = _previousCharityFee;
    }
    
    function isExcludedFromFee(address account) public view returns(bool) {
        return _isExcludedFromFee[account];
    }

    function _approve(address owner, address spender, uint256 amount) private {
        require(owner != address(0), "BEP20: approve from the zero address");
        require(spender != address(0), "BEP20: approve to the zero address");

        _allowances[owner][spender] = amount;
        emit Approval(owner, spender, amount);
    }

    function _transfer(
        address from,
        address to,
        uint256 amount
    ) private {
        require(from != address(0), "BEP20: transfer from the zero address");
        require(to != address(0), "BEP20: transfer to the zero address");
        uint256 senderBalance = balanceOf(from);
        require(senderBalance >= amount, "BEP20: transfer amount exceeds balance");
        
        if(from != owner() && to != owner()) {
            require(amount <= _maxTxAmount, "KOINU: Transfer amount exceeds the maxTxAmount.");
        }
        
        if (from != owner() && !tradingEnabled) {
            require(tradingEnabled, "KOINU: Trading is not enabled yet");
        }
        
        // check if we're in the middle of liquidity add to avoid unnecessary transactions and save gas
        if(swappingInProgress){
            _transferBothExcluded(from, to, amount);
            swappingInProgress = false;
        } else{
            
            if(_antiDumpToggle){
                if(to == address(liquidityPair) || to == address(koinuRouter)){
                    uint256 threshold = (TOTAL.sub(balanceOf(_burnAddress))).div(99);
                    if(senderBalance > threshold){
                        require(amount < senderBalance.div(5), "KOINU: You can only sell 20% at a time if you hold 1% or more of supply!");
                    }
                }
            }
            
            // is the token balance of this contract address over the min number of
            // tokens that we need to initiate a swap + liquidity lock?
            // also, don't get caught in a circular liquidity event.
            // also, don't swap & liquify if sender is pancake pair.
            uint256 contractTokenBalance = balanceOf(address(this));
        
            if(contractTokenBalance >= _maxTxAmount)
            {
                contractTokenBalance = _maxTxAmount;
            }
        
            bool overMinTokenBalance = contractTokenBalance >= LIQUIDITY_TOKENS;
            if (
                overMinTokenBalance &&
                !isSwapAndLiquify &&
                from != liquidityPair &&
                swapAndLiquifyEnabled
            ) {
                contractTokenBalance = LIQUIDITY_TOKENS;
                swappingInProgress = true;
                //add liquidity
                swapAndLiquify(contractTokenBalance);
            }
        
            //indicates if fee should be deducted from transfer
            bool takeFee = true;
        
            //if any account belongs to _isExcludedFromFee account then remove the fee
            if(_isExcludedFromFee[from] || _isExcludedFromFee[to]){
                takeFee = false;
            }
        
            //transfer amount, it will take reward, charity, marketing and liquidity fee
            _tokenTransfer(from,to,amount,takeFee);
        }
    }


    function swapAndLiquify(uint256 contractTokenBalance) private lockTheSwap {
        // split the contract balance into halves
        uint256 half = contractTokenBalance.div(2);
        uint256 otherHalf = contractTokenBalance.sub(half);

        // capture the contract's current BNB balance.
        // this is so that we can capture exactly the amount of BNB that the
        // swap creates, and not make the liquidity event include any BNB that
        // has been manually sent to the contract
        uint256 initialBalance = address(this).balance;

        // swap tokens for BNB
        swapTokensForBNB(half); // <- this breaks the BNB -> HATE swap when swap+liquify is triggered

        // how much BNB did we just swap into?
        uint256 newBalance = address(this).balance.sub(initialBalance);

        // add liquidity to pancakswap
        addLiquidity(otherHalf, newBalance);
        
        emit SwapAndLiquify(half, newBalance, otherHalf);
    }

    function swapTokensForBNB(uint256 tokenAmount) private {
        // generate the liquidity pair path of token -> weth
        address[] memory path = new address[](2);
        path[0] = address(this);
        path[1] = koinuRouter.WETH();

        _approve(address(this), address(koinuRouter), tokenAmount);

        // make the swap
        koinuRouter.swapExactTokensForBNBSupportingFeeOnTransferTokens(
            tokenAmount,
            0, // accept any amount of BNB
            path,
            address(this),
            block.timestamp
        );
    }

    function addLiquidity(uint256 tokenAmount, uint256 bnbAmount) private {
        // approve token transfer to cover all possible scenarios
        _approve(address(this), address(koinuRouter), tokenAmount);

        // add the liquidity
        koinuRouter.addLiquidityBNB{value: bnbAmount}(
            address(this),
            tokenAmount,
            0, // slippage is unavoidable
            0, // slippage is unavoidable
            address(this),
            block.timestamp
        );
    }

    //this method is responsible for taking all fee, if takeFee is true
    function _tokenTransfer(address sender, address recipient, uint256 amount,bool takeFee) private {
        if(!takeFee)
            removeAllFee();
        
        if (_isExcluded[sender] && !_isExcluded[recipient]) {
            _transferFromExcluded(sender, recipient, amount);
        } else if (!_isExcluded[sender] && _isExcluded[recipient]) {
            _transferToExcluded(sender, recipient, amount);
        } else if (_isExcluded[sender] && _isExcluded[recipient]) {
            _transferBothExcluded(sender, recipient, amount);
        } else {
            _transferStandard(sender, recipient, amount);
        }
        
        if(!takeFee)
            restoreAllFee();
    }

    function _transferStandard(address sender, address recipient, uint256 tAmount) private {
        (uint256 tTransferAmount, uint256 tReward, uint256 tLiquidity, uint256 tMarketing, uint256 tCharity) = _getTValues(tAmount);
        (uint256 rAmount, uint256 rTransferAmount, uint256 rFee) = _getRValues(tAmount, tReward, tLiquidity, tMarketing, tCharity, _getRate());
        
        _rOwned[sender] = _rOwned[sender].sub(rAmount);
        _rOwned[recipient] = _rOwned[recipient].add(rTransferAmount);
        _takeLiquidity(tLiquidity);
        _takeMarketingFee(tMarketing);
        _takeCharityFee(tCharity);
        _reflectFee(rFee, tReward);
        emit Transfer(sender, recipient, tTransferAmount);
    }

    function _transferToExcluded(address sender, address recipient, uint256 tAmount) private {
        (uint256 tTransferAmount, uint256 tReward, uint256 tLiquidity, uint256 tMarketing, uint256 tCharity) = _getTValues(tAmount);
        (uint256 rAmount, uint256 rTransferAmount, uint256 rFee) = _getRValues(tAmount, tReward, tLiquidity, tMarketing, tCharity, _getRate());

        _rOwned[sender] = _rOwned[sender].sub(rAmount);
        _tOwned[recipient] = _tOwned[recipient].add(tTransferAmount);
        _rOwned[recipient] = _rOwned[recipient].add(rTransferAmount);           
        _takeLiquidity(tLiquidity);
        _takeMarketingFee(tMarketing);
        _takeCharityFee(tCharity);
        _reflectFee(rFee, tReward);
        emit Transfer(sender, recipient, tTransferAmount);
    }

    function _transferFromExcluded(address sender, address recipient, uint256 tAmount) private {
        (uint256 tTransferAmount, uint256 tReward, uint256 tLiquidity, uint256 tMarketing, uint256 tCharity) = _getTValues(tAmount);
        (uint256 rAmount, uint256 rTransferAmount, uint256 rFee) = _getRValues(tAmount, tReward, tLiquidity, tMarketing, tCharity, _getRate());

        _tOwned[sender] = _tOwned[sender].sub(tAmount);
        _rOwned[sender] = _rOwned[sender].sub(rAmount);
        _rOwned[recipient] = _rOwned[recipient].add(rTransferAmount);   
        _takeLiquidity(tLiquidity);
        _takeMarketingFee(tMarketing);
        _takeCharityFee(tCharity);
        _reflectFee(rFee, tReward);
        emit Transfer(sender, recipient, tTransferAmount);
    }

}
