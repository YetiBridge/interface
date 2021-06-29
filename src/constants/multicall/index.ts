import { ChainId } from '@pangolindex/sdk'
import MULTICALL_ABI from './abi.json'

const MULTICALL_NETWORKS: { [chainId in ChainId]: string } = {
  [ChainId.FUJI]: '0xd82223eE0bD0D0D6896eFe8d8E3b0B819F6a7E80',
  [ChainId.AVALANCHE]: '0x0FB54156B496b5a040b51A71817aED9e2927912E'
}

export { MULTICALL_ABI, MULTICALL_NETWORKS }
